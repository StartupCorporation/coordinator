.PHONY: help, init
.DEFAULT_GOAL := help

PROJECT_DIR := $(shell pwd)

help:  ## Lists all existing commands
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

init:  ## Clones all project repositories and sets up them for local development
	@echo "Initializing the Deye Web project for the development in the ${PROJECT_DIR}. Please wait."

	@git clone -q git@github.com:StartupCorporation/customer-app.git $(PROJECT_DIR)/backend/customer/app
	@git clone -q git@github.com:StartupCorporation/admin-app.git $(PROJECT_DIR)/backend/admin/app
	@git clone -q git@github.com:StartupCorporation/fe-customer-app.git $(PROJECT_DIR)/frontend/customer/app
	@git clone -q git@github.com:StartupCorporation/infrastructure.git $(PROJECT_DIR)/infrastructure

	@echo "Done."
