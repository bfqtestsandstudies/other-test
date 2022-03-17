help: # Print help on Makefile
	@grep '^[^.#]\+:\s\+.*#' Makefile | \
	sed "s/\(.\+\):\s*\(.*\) #\s*\(.*\)/`printf "\033[93m"`\1`printf "\033[0m"`	\3 [\2]/" | \
	expand -t20

test:
	@echo "running unit test"
	go clean --testcache 
	go test -v -race ./...

lint:
	@echo "running lint"
	golangci-lint run ./...

report:
	@echo "running generation of unit test coverage.out and report.json"
	go clean --testcache
	go test -v -coverprofile tmp/coverage.out -json ./... >> tmp/report.json

all: test lint report

# Gerenate CI workflows
.PHONY: workflows
workflows:
	@echo "Generating CI workflows"
	@cd scripts && ./workflows.sh