.DEFAULT_GOAL := test

.PHONY: test
test:	lint

.PHONY: lint
lint:
	@echo "Starting  lint"
	find . -name "*.yml" | xargs yamllint --strict
	@echo "Completed lint"

.PHONY: setup
setup:
	@echo "Starting  setup"
	pip install -r requirements.txt
	ansible-galaxy collection install -r requirements.yml
	@echo "Completed setup"
