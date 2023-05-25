SERVICES = $(shell ls -d services/* | sed 's/\/services\///g')

build:
	for service in $(SERVICES); do \
		./scripts/build.sh -p $$service -t $$service; \
	done
	docker-compose build --no-cache

up:
	docker-compose up -d

down:
	docker-compose down --remove-orphans

restart:
	docker-compose restart

logs:
	docker-compose logs -f

pull-latest-modules:
	git submodule update --recursive --remote