package main

import (
	"log"

	"github.com/bfqtestsandstudies/other-test/microservices/microservice1/internal/app"
	internalPKG "github.com/bfqtestsandstudies/other-test/microservices/microservice1/internal/pkg"
	"github.com/bfqtestsandstudies/other-test/microservices/microservice1/pkg"
)

func main() {
	log.Println(pkg.ExamplePKG())
	log.Println(internalPKG.ExampleInternalPKG())
	log.Println(app.ExampleAPP())
}
