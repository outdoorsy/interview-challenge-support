package rental

import (
	"fmt"

	"main/internal/database"
)

const (
	METER_TO_MILES = 0.000621371192
	MAX_MILES      = 100
)

type Rental struct {
	ID                int      `json:"id"`
	Name              string   `json:"name"`
	Price             Price    `json:"price"`
	Location          Location `json:"location"`
	OwnerID           int      `json:"owner_id"`
	PrimaryImage      string   `json:"primary_image"`
	WeeklyDiscountPct float64  `json:"-"`
}

type Price struct {
	Day  int `json:"day"`
	Week int `json:"week"`
}

type Location struct {
	Lat     float64 `json:"lat"`
	Lng     float64 `json:"lng"`
	City    string  `json:"city"`
	State   string  `json:"state"`
	Zip     string  `json:"zip"`
	Country string  `json:"country"`
}

type Rentals struct {
	Rentals []Rental `json:"rentals"`
}

type FetchRequest struct {
	UserID int    `query:"user_id"`
	Near   string `query:"near"`
}

func FetchRentals(req *FetchRequest) (Rentals, error) {
	result := Rentals{}

	query := `
		SELECT
	    	id,
	    	name,
	    	price_per_day,
	    	weekly_discount_pct,
	    	user_id,
	    	primary_image_url,
	    	home_city,
	    	home_state,
	    	home_zip,
	    	home_country,
	    	lat,
	    	lng
		FROM rentals
		WHERE
		    deleted_at is null
	`

	if req.UserID != 0 {
		query += fmt.Sprintf(" and user_id = %d", req.UserID)
	}

	if req.Near != "" {
		query += fmt.Sprintf(" and st_distance(geography(st_makepoint(rentals.lat,rentals.lng)), geography(st_makepoint(%v))) * %f < %d", req.Near, METER_TO_MILES, MAX_MILES)
	}

	query += " ORDER BY id"

	rows, err := database.DB.Query(query)
	if err != nil {
		return result, err
	}
	defer rows.Close()

	for rows.Next() {
		rental := Rental{}

		if err := rows.Scan(
			&rental.ID,
			&rental.Name,
			&rental.Price.Day,
			&rental.WeeklyDiscountPct,
			&rental.OwnerID,
			&rental.PrimaryImage,
			&rental.Location.City,
			&rental.Location.State,
			&rental.Location.Zip,
			&rental.Location.Country,
			&rental.Location.Lat,
			&rental.Location.Lng); err != nil {
			return result, err
		}

		weeklyPrice := float64(rental.Price.Day * 7)
		rental.Price.Week = int(weeklyPrice) - int(weeklyPrice*rental.WeeklyDiscountPct)

		result.Rentals = append(result.Rentals, rental)
	}

	return result, nil
}
