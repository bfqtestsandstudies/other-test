package main

import "fmt"

func main() {
	fmt.Println(Hello())
}

func Hello() string {
	return fmt.Sprint("Hello")
}
