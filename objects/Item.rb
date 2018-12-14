require './objects/Batter'

class Item

  attr_reader :id, :type, :name, :ppu, :batters

  def initialize(item_hash)
    @id = item_hash["id"]
    @type = item_hash["type"]
    @name = item_hash["name"]
    @ppu = item_hash["ppu"]
    # @batters = make_batter_array(item_hash["batters"])
  end

  # def make_batter_array(batter_array)
  #   batter_array.map do |batter_hash|
  #     Batter.new(batter_hash)
  #   end
  # end

end
