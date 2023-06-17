SERVICES = $(shell ls -d services/* | sed 's/\/services\///g')

build:
	for service in $(SERVICES); do \
		./scripts/build.sh -p $$service -t $$service; \
	done
	docker-compose build --no-cache

build-nodeps:
	for service in $(SERVICES); do \
		./scripts/build-nodeps.sh -p $$service -t $$service; \
	done
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down --remove-orphans

restart:
	docker-compose restart

logs:
	docker-compose logs -f

init:
	git submodule update --init --recursive --remote

pull:
	git submodule update --remote --recursive
