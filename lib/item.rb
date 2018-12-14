require './lib/topping'
require './lib/batter'
require 'pry'


class Item
  attr_reader :id, :type, :name, :ppu, :batters, :toppings

  def initialize(item_attributes)
    @id       = item_attributes[:id]
    @type     = item_attributes[:type]
    @name     = item_attributes[:name]
    @ppu      = item_attributes[:ppu]
    @batters  = create_batters(item_attributes[:batters][:batter])
    @toppings = create_toppings(item_attributes[:topping])
  end

  def create_batters(array_o_batter)
    array_o_batter.map do |batter|
      Batter.new(batter)
    end
  end

  def create_toppings(array_o_topping)
    array_o_topping.map do |topping|
      Topping.new(topping)
    end
  end
end
