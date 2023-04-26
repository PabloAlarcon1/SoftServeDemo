package main

import (
	"fmt"
	"net/http"
)

func helloWorldPage(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World now")
}

func main() {
	http.HandleFunc("/", helloWorldPage)
	http.ListenAndServe(":8082", nil)
}
