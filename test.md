require "rubygems"
require "json"

objects_json = File.read('data/objects.json')
feed_entries_json = File.read('data/feed_entries.json')

objects_hash = JSON[objects_json]
feed_entries_array = JSON[feed_entries_json]
