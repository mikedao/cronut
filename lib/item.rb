require './lib/batter'
require './lib/topping'

class Item
  attr_reader :ppu,
              :id,
              :type,
              :name,
              :batters,
              :toppings


  def initialize(data)
    @ppu = data["ppu"]
    @id = data["id"]
    @type = data["type"]
    @name = data["name"]
    @batters = []
    @toppings = []
  end

  def make_batters(data)
    data["batters"]["batter"].each do |batter|
      @batters << Batter.new(batter)
    end
  end

  def make_toppings(data)
    data["topping"].each do |topping|
      @toppings << Topping.new(topping)
    end
  end
end
