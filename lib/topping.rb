class Topping
  attr_reader :id, :type

  def initialize(topping_attributes)
    @id = topping_attributes[:id]
    @type = topping_attributes[:type]
  end
end
