package database

import (
	"database/sql"
	"fmt"
)

var DB *sql.DB

const (
	host     = "localhost"
	port     = 5441 // Default port
	user     = "root"
	password = "root"
	dbname   = "testingwithrentals"
)

func Connect() error {
	var err error
	dsn := fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=disable", host, port, user, password, dbname)
	DB, err = sql.Open("postgres", dsn)
	if err != nil {
		return err
	}
	if err = DB.Ping(); err != nil {
		return err
	}
	return nil
}
