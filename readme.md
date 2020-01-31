# Duolingo Unofficial API Definition

Work in progress.

## Description
Unofficial OpenAPI 2.0 (aka Swagger) definition for Duolingo API.

## Generate Redoc docs
```bash
npx redoc-cli bundle swagger.yaml
```

## Mock Server with Prism
For mocking purpose [Prism](https://stoplight.io/open-source/prism/) is used.

```
npx prism mock swagger.yaml
```