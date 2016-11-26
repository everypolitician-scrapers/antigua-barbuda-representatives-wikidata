#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

sparq = 'SELECT ?item WHERE { ?item wdt:P39 wd:Q21290853 . }'
ids = EveryPolitician::Wikidata.sparql(sparq)
raise "No ids" if ids.empty?
EveryPolitician::Wikidata.scrape_wikidata(ids: ids)
