.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":[^#]*? #| #"}; {printf "%-57s%s\n", $$1 $$3, $$2}'

# Bootstrap
.PHONY: bootstrap bs
bootstrap: # Bootstrap to start development.
	@./scripts/bootstrap.sh
bs: # Short hand for the bootstrap command.
	@$(MAKE) bootstrap

# Clean
.PHONY: clean
clean: # Clean
	@bun run clean
	@melos clean
	@flutter clean

# Generate
.PHONY: gen-gitignore-files gen-labeler gen-labels
gen-gitignore-files: # Generate gitignore target files.
	@./scripts/gen_gitignore_files.sh
gen-labeler: # Generates the package part of `.github/labeler.yml`.
	@bun run scripts/gen-labeler.ts
gen-labels: # Generates the package part of `.github/labels.yml`.
	@bun run scripts/gen-labels.ts

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
