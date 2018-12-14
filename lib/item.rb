require 'json'

class Item
  attr_reader :data,
              :batter_getter,
              :get_items

  def initialize
    @batter = batter
    @type = type
    @name = name
    @ppu = ppu
    @topping = topping
  end

  def self.get_items(data)
    data["items"]["item"]
  end

  def self.batter_getter(items)
    items.map do |b|
      b["batters"]["batter"]
    end
  end

  def self.topping_getter(items)
    items.map do |t|
      t["topping"]
    end
  end

  def self.data
    data = File.read('./data/cronut.json')
    parsed = JSON.parse(data)
  end
end
require 'json'

puts json_data = Item.data
puts items = Item.get_items(json_data)
puts batters = Item.batter_getter(items)
puts toppings = Item.topping_getter(items)
