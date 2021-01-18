.PHONY: build down prune ps secrets up

default: build

.env:
	cp -f .env.example .env

build:
	docker-compose build

down:
	docker-compose down

logs:
	docker-compose logs -f

ps:
	docker-compose ps

reset:
	docker-compose down --volumes
	rm -rf ./secrets

secrets:
	bash bin/create-secrets.sh

up:
	docker-compose build
	docker-compose up -d
