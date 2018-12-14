require 'json'
require 'pry'
require './objects/Item'
require './objects/Batter'

cronut_data = File.read('./data/cronut.json')
data_hash = JSON.parse(cronut_data)

# items = data_hash["items"]["item"].map do |item_hash|
#           Item.new(item_hash)
#         end

def make_item_array(data_hash)
  data_hash["items"]["item"].map do |item_hash|
    Item.new(item_hash)
  end
end


def make_batter_array(batter_array)

end
