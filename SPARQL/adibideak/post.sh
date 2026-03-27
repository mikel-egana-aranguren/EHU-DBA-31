#!/bin/sh

curl -X POST http://localhost:7200/repositories/ABD-01_25-26_ejemplos_RDF \
  -H "Content-Type: application/sparql-query" \
  -H "Accept: application/sparql-results+json" \
  --data-binary "@triples.rq"

