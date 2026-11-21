.PHONY: build lint setup snapshot-update test

build:
	kustomize build manifests/base

lint:
	yamllint .

setup:
	npm install
	uv sync

snapshot-update:
	uv run pytest --snapshot-update

test:
	uv run pytest
