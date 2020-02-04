# Duolingo Unofficial API Definition

![](https://github.com/igorskh/duolingo-api/workflows/Node.js%20CI/badge.svg)

## Description
Unofficial OpenAPI 2.0 (aka Swagger) definition for Duolingo API. Check out [interactive documentation](https://duolingo-api.roundeasy.now.sh/).

The validation and codegen was tested for Golang with [go-swagger](https://github.com/go-swagger/go-swagger).

Code generation for other languages is available with official [swagger-codegen](https://github.com/swagger-api/swagger-codegen).

## Validate and Generate Server/Client Code
Validate documentation:
```bash
# node.js swagger
npx swagger validate swagger.yaml
# go-swagger
swagger validate
```

Generate client:
```bash
# go-swagger
swagger generate client -f ./duolingo-api/swagger.yaml
# swagger-codegen, e.g. python
swagger-codegen generate -i swagger.yaml -l python -o ../py
```

See more documentation on [https://goswagger.io](https://goswagger.io).

Generate interactive documentation with [Redoc](https://github.com/Redocly/redoc):
```bash
npx swagger-merger -i swagger.yaml -o swagger-complete.yaml
npx redoc-cli bundle swagger-complete.yaml
```

## Mock Server with Prism
For mocking purpose [Prism](https://stoplight.io/open-source/prism/) is used:
```
npx swagger-merger -i swagger.yaml -o swagger-complete.yaml
npx prism mock swagger-complete.yaml
```

## Implementations
* [Golang](https://github.com/igorskh/go-duolingo)
* ...

Do you want to add more implementations? I would be happy to support you. Also, if you want to extend the specification, feel free to create a pull request.