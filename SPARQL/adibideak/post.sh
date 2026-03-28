#!/bin/sh

curl -X POST http://localhost:7200/repositories/DBK-31-25-26-SPARQL \
  -H "Content-Type: application/sparql-query" \
  -H "Accept: application/sparql-results+json" \
  --data-binary "@triples.rq"

