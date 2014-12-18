package main

import (
	"github.com/gorilla/mux"
	"log"
	"net/http"
	"os"
)

var (
	rtr *mux.Router
)

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		port = "3000"
	}
	log.Printf("Listening...:%s", port)
	http.Handle("/", rtr)
	http.ListenAndServe(":"+port, nil)
}

func init() {
	rtr = mux.NewRouter()
	rtr.HandleFunc("/", func(w http.ResponseWriter, req *http.Request) {
		w.WriteHeader(200)
		w.Write([]byte("Hello World!"))
	}).Methods("GET")
}
