package main

import (
	"log"

	"github.com/gofiber/fiber/v2"
	_ "github.com/lib/pq"
	"main/internal/database"
	"main/internal/routes"
)

func main() {
	if err := database.Connect(); err != nil {
		log.Fatal(err)
	}

	app := fiber.New()

	app.Get("/rentals", routes.GetRentals)

	log.Fatal(app.Listen(":3000"))
}
