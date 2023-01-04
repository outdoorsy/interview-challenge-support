# Challenge
Thanks for applying for the Technical Support role at Outdoorsy. We've put together this challenge, which should take around 1-2 hours to complete.

## Overview
This repository contains database file (sql) and application code that should be used to work through the assignment.
Below you will find several questions that are issues that have been escalated. We'd like you to review each question and find a solution or next steps to the problem.

## Question 1
The user, John Smith, called into support and reported that one of his listings in Portland does not show up in search results when searching in the area. The customer has 6 listings total (3 in California, 2 in Oregon and 1 in Washington). He says that the information for city and state look correct on the website but the vehicle continues to not appear when he tries to do a search for it.

When searching for vehicles the client makes a request to the rentals API. Here is an example one when searching in Hawaii.
http://127.0.0.1:3000/rentals?near=20.88,-156.45

Can you help us understand why the vehicle is not showing properly?

_NOTE: The rentals table contains the city, state and country._


## Question 2
User, Tom Edision, has written into support asking why the weekly price on one of his vehicles (Ford Transit Campervan) is lower than he expects.
He says he hasn't applied any discounts and his daily price is set to $239 and his weekly price is showing as $1,505.70. 
He expects his daily price to be his daily price x 7 days which would be $1,673.

```json
   {
      "id": 14,
      "name": "Ford Transit Campervan",
      "price": {
        "day": 23900,
        "week": 150570
      },
      "location": {
        "lat": 51.15,
        "lng": -113.98,
        "city": "Calgary",
        "state": "AB",
        "zip": "T3N 1N8",
        "country": "CA"
      },
      "owner_id": 4,
      "primary_image": "https://res.cloudinary.com/outdoorsy/image/upload/v1554872873/p/rentals/115462/images/qnsbiznxh9hxttrlmwuq.jpg"
    }
```

Can you look into why his daily price wouldn't be set correctly?

_NOTE: The amount for price that is stored in the database is in cents._

## Question 3
TODO: Some question about payouts - Find all bookings that we have haven't paid out that have been returned

## Notes
- You will not need to run the project but if you'd like there are instructions found below.
- TODO: include dbfiddle

## What we're looking for
- An ability to dig into a problem and find a resolution.
- An ability to communicate what the problem was.
- An ability to describe what next steps would be.

# Instructions to run project
- Prerequisites: You will need Docker and Go installed.
- Run `docker compose up`.
  - This will automatically generate a postgres database and some data to work with.
- Run `go mod vendor`
- Run `go run ./main.go`
- Visit `http://127.0.0.1:3000/rentals`

When complete, please send the answers and responses back.

Thank you and please ask if you have any questions!
