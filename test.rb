require "rubygems"
require "json"

objects_json = File.read('data/objects.json')
feed_entries_json = File.read('data/feed_entries.json')

objects_hash = JSON[objects_json]
feed_entries_array = JSON[feed_entries_json]

feed_entries_array.each do |feed|
  objects_hash.each do |objects_array|
    objects_array[1].each do |user_hash|
      puts user_hash.values_at("name")
    end
  end
end
