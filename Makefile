.PHONY: spec

spec:
	docker run -d --name dmsr_spec -p 8080:8080 -v "$(shell pwd)":/tmp -e SWAGGER_JSON=/tmp/spec.yml docker.swagger.io/swaggerapi/swagger-ui

stop:
	@docker stop dmsr_spec > /dev/null 2&>1 || true
