.PHONY: assets pull start shell remove stop


list:
	@grep '^\.PHONY' Makefile | cut -d' ' -f2- | tr ' ' '\n'


pull:
	docker pull openknowledge/ckan-base:2.7 && \
	docker pull openknowledge/ckan-dev:2.7 && \
	docker-compose -f docker-compose.dev.yml build ckan-dev

build:
	docker-compose -f docker-compose.dev.yml build

start:
	docker-compose -f docker-compose.dev.yml up --build

shell:
	docker-compose -f docker-compose.dev.yml exec ckan-dev bash

remove:
	docker-compose -f docker-compose.dev.yml rm -f ${SERVICE}

stop:
	docker-compose -f docker-compose.dev.yml stop ${SERVICE}
