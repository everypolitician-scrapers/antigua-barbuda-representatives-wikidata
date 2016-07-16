#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

ids = EveryPolitician::Wikidata.wdq('claim[39:21290853]')
raise "No ids" if ids.empty?
EveryPolitician::Wikidata.scrape_wikidata(ids: ids)
