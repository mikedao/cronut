require 'json'
require 'pry'
require './lib/item'


file = File.read('./data/cronut.json')
contents = JSON.parse(file)

item_array = contents["items"]["item"].map do |item|
  i = Item.new(item)
  i.make_toppings(item)
  i.make_batters(item)
  i
end

p item_array
