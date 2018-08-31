IMAGE=wqnice/test-ci:latest
.PHONY: build push destroy

build:
	docker-compose build --no-cache

push: build
	docker push ${IMAGE}

up:
	docker-compose up -d

down:
	docker-compose down