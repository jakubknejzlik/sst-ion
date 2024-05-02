build:
	docker buildx build --platform=linux/amd64 -t jakubknejzlik/sst-ion .
push:
	docker push jakubknejzlik/sst-ion