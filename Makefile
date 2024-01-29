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

# Mason
.PHONY: mason-get mason-make-feature
mason-get: # Execute the `mason get` command.
	@mason get

mason-make-feature: # Create a feature package using the Mason.
	@mason make feature
