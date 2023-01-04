package routes

import (
	"github.com/gofiber/fiber/v2"
	"main/internal/rental"
)

func GetRentals(c *fiber.Ctx) error {
	req := new(rental.FetchRequest)
	if err := c.QueryParser(req); err != nil {
		return err
	}

	rentals, err := rental.FetchRentals(req)

	if err != nil {
		return err
	}

	return c.JSON(rentals)
}
