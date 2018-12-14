require 'pry'

class Batter
  attr_reader :id, :type

  def initialize(batter_attributes)
    @id = batter_attributes[:id]
    @type = batter_attributes[:type]
  end
end
