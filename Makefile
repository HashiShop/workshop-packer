PATH := $(PATH):$(HOME)/.local/bin:$(HOME)/bin:/bin:/usr/local/bin
SHELL := /usr/bin/env bash

TEMPLATE_PATH = templates/$(TEMPLATE).json

.DEFAULT_GOAL := help

help: ## Display this help
	@grep -E '^[a-zA-Z1-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN { FS = ":.*?## " }; { printf "\033[36m%-30s\033[0m %s\n", $$1, $$2 }'

install: ## Install
	$(info --> Install)
	@make install-vendors

install-vendors: ## Install vendors
	$(info --> Install vendors)
	@make install-ansible-roles

install-ansible-roles:
	$(info --> Install ansible roles)
	@ansible-galaxy install -r provisioning/ansible/requirements.yml -p provisioning/ansible/roles/ --force

validate: ## Validate template
	$(info --> Validate template)
	@packer validate $(TEMPLATE_PATH)

inspect: ## Inspect template
	$(info --> Inspect template)
	@packer inspect $(TEMPLATE_PATH)

build: ## Build image
	$(info --> Build image)
	@packer build $(TEMPLATE_PATH)
