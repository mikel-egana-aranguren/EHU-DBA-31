from SPARQLWrapper import SPARQLWrapper, JSON

sparql = SPARQLWrapper("https://query.wikidata.org/sparql")
sparql.setQuery("""
    SELECT ?city ?cityLabel WHERE {
        ?city wdt:P31 wd:Q515 .
        SERVICE wikibase:label { 
            bd:serviceParam wikibase:language "en" 
        }
    } LIMIT 10
""")
sparql.setReturnFormat(JSON)
results = sparql.query().convert()