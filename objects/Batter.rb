class Batter

  attr_reader :id, :type

  def initialize(batter_hash)
    @id = batter_hash["id"]
    @type = batter_hash["type"]
  end

end
