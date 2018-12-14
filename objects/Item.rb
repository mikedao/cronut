class Item

  attr_reader :id, :type, :name, :ppu, :batters

  def initialize(item_hash)
    @id = item_hash["id"]
    @type = item_hash["type"]
    @name = item_hash["name"]
    @ppu = item_hash["ppu"]
    @batters = []
  end

end
