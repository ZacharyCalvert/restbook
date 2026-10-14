.PHONY: spec stop-spec stop clean stop-puml

spec: stop-spec
	docker run --rm -d --name dmsr_spec -p 8080:8080 -v "$(shell pwd)":/tmp -e SWAGGER_JSON=/tmp/spec.yml docker.swagger.io/swaggerapi/swagger-ui

stop-spec:
	@docker stop dmsr_spec >/dev/null 2>&1 || true

puml: stop-puml
	docker run --rm -d --name dmsr_puml -p 8181:8080 plantuml/plantuml-server:jetty

stop-puml:
	@docker stop dmsr_puml >/dev/null 2>&1 || true

stop: stop-spec stop-puml

clean: stop
