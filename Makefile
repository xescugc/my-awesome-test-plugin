.PHONY: build-image
docker-release: ## Builds the base Docker image for the registry
	@docker build -t cycloid/cy-go-plugin:0.0.1 .
	@docker push cycloid/cy-go-plugin:0.0.1

