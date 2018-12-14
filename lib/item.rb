require 'json'
require 'pry'
require './lib/batter.rb'
require './lib/topping.rb'

class Item
  attr_reader :id,
              :type,
              :name,
              :ppu,
              :batters,
              :toppings

  def initialize (id, type, name, ppu, batters, toppings)
    @id = id
    @type = type
    @name = name
    @ppu = ppu
    @batters = batters
    @toppings = toppings
  end

  def self.read_from_json(file)
    read_file = File.read(file)
    items_hash = JSON.parse(read_file, symbolize_names: true)[:items][:item]
    items = items_hash.map do |item|
      Item.new(item[:id],
              item[:type],
              item[:name],
              item[:ppu],
              Batter.parse(item[:batters][:batter]),
              Topping.parse(item[:topping]),
              )
    end
  end
end

Item.read_from_json('./data/cronut.json')
