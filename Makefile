.PHONY: generate-api-client
openapi.json:
	curl https://geo.aws.bmlt.app/api-docs > openapi.json

generate: openapi.json
	rm -rf src/resources/npm/api-client
	docker run --rm -v "$(shell pwd):/local" -w /local openapitools/openapi-generator-cli generate \
	    -i openapi.json \
	    -g php \
	    -p artifactVersion=1.0.2 \
	    --git-repo-id=geo-api-php-client \
	    --git-user-id=bmlt-enabled \
	    -o .

template:
	mkdir -p templates
	docker run --rm -v "$(shell pwd):/local" -w /local openapitools/openapi-generator-cli author template \
	    -g php \
	    -o ./templates

clean:
	rm -f openapi.json
