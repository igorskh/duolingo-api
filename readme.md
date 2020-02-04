# Duolingo Unofficial API Definition

![](https://github.com/igorskh/duolingo-api/workflows/Node.js%20CI/badge.svg)

## Description
Unofficial OpenAPI 2.0 (aka Swagger) definition for Duolingo API.

The validation and codegen was tested for Golang with [go-swagger](https://github.com/go-swagger/go-swagger).

Code generation for other languages is possible with official [swagger-codegen](https://github.com/swagger-api/swagger-codegen).

Check out [interactive documentation](https://duolingo-api.roundeasy.now.sh/).

## Validate and Generate Server/Client Code
Validate documentation:
```bash
# go-swagger
swagger validate
# node.js swagger
npx swagger validate swagger.yaml
```

Generate client:
```bash
# go-swagger
swagger generate client -f ./duolingo-api/swagger.yaml
# swagger-codegen, e.g. for python
swagger-codegen generate -i swagger.yaml -l python -o ../py
```

See more documentation for Go swagger on [https://goswagger.io](https://goswagger.io).

## Redoc Documentation
Generate interactive documentation with [Redoc](https://github.com/Redocly/redoc):
```bash
npx swagger-merger -i swagger.yaml -o swagger-complete.yaml
npx redoc-cli bundle swagger-complete.yaml
```

Usage of `swagger-merger` is required, because paths references are not resolved correctly with some third-party tools for swagger.

## Mock Server with Prism
For mocking purpose [Prism](https://stoplight.io/open-source/prism/) is used:
```
npx swagger-merger -i swagger.yaml -o swagger-complete.yaml
npx prism mock swagger-complete.yaml
```

## Implementations
* [Golang](https://github.com/igorskh/go-duolingo)
* ...

If you wish to add more implementations in other programming languages, I would be happy to support you. 
Also, if you want to extend the specification with more feaures, feel free to create a pull request.