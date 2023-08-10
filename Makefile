.PHONY: env
.DEFAULT_GOAL := help

SHELL := /bin/bash
APP_ROOT ?= $(shell 'pwd')

export $(cat .env_postgres | xargs)
export $(cat .env_clickhouse | xargs)

include clickhouse/Makefile
include postgres/Makefile

# run all servers.
run-servers:
	@docker-compose up -d
	@docker-compose ps

# Display available commands for all targets
help: ## Help
	@echo "Help"
