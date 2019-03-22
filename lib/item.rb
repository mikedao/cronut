class Item

  attr_reader :id, :type, :name, :ppu

  def initialize (id, type, name, ppu)
    @id = id
    @type = type
    @name = name
    @ppu = ppu
    @batters = []
  end

end