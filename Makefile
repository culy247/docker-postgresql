all: build

build:
	@docker build --tag=viauco/postgresql .

release: build
	@docker build --tag=viauco/postgresql:$(shell cat VERSION) .
