version=0.0.498

build:
	docker buildx build --build-arg="VERSION=$(version)" --platform=linux/amd64 -t jakubknejzlik/sst-ion:$(version) .
push:
	docker push jakubknejzlik/sst-ion:$(version)
publish: build push