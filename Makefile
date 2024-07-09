version=0.0.498

build:
	docker buildx build --build-arg="VERSION=$(version)" --platform=linux/amd64 -t jakubknejzlik/sst-ion:$(version) .
push:
	docker push jakubknejzlik/sst-ion:$(version)
push-as-latest:
	docker pull jakubknejzlik/sst-ion:$(version)
	docker tag jakubknejzlik/sst-ion:$(version) jakubknejzlik/sst-ion:latest
	docker push jakubknejzlik/sst-ion:latest
publish: build push