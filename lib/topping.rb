class Topping
  attr_reader :id,
              :type

  def initialize(id, type)
    @id = id
    @type = type
  end

  def self.parse(topping_array)
    topping_array.map do |topping|
      Topping.new(topping["id"],
                topping["type"])
    end
  end
end
