SHELL := /bin/bash

.PHONY: testcommand
testcommand:
	@echo "This is a test command"

##frontend-build:
.PHONY: frontend-build
frontend-build:
	cd frontend && npm install && npm run build

.PHONY: backend-dev
backend-dev:
	@echo "starting backend development server..."
	cd backend && source .venv/bin/activate uvicorn app.main:app --reload

frontend-dev:
	@echo "starting frontend developmemt server..."
	cd frontend && npm install && npm run dev

#build prod
.PHONY: build-prod
build-prod:
	docker compose -f docker-compose.build-prod.yml build