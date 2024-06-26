.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":[^#]*? #| #"}; {printf "%-57s%s\n", $$1 $$3, $$2}'

# Bootstrap
.PHONY: bootstrap bs
bootstrap: # Bootstrap to start development.
	@./tool/bootstrap.sh
bs: # Short hand for the bootstrap command.
	@$(MAKE) bootstrap

# Generate
.PHONY: gen-gitignore-files
gen-gitignore-files: # Generate gitignore target files.
	@./tool/gen_gitignore_files.sh

# Mason
.PHONY: mason-get mason-make-feature
mason-get: # Execute the `mason get` command.
	@mason get

mason-make-feature: # Create a feature package using the Mason.
	@mason make feature

# Docker
.PHONY: docker-create-network compose-up compose-down
docker-create-network: # docker network create
	@docker network create asis-network
compose-up: # docker compose up
	@docker compose up -d --wait
compose-down: # docker compose down
	@docker compose down --rmi all -v --remove-orphans
