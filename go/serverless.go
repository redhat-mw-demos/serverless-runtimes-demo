package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello, Go!")
	})

	http.HandleFunc("/api/go", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Welcome, Go with Serverless!")
	})

	log.Fatal(http.ListenAndServe(":8080", nil))

}
