class Ingredient
  attr_reader :id,
              :type

  def initialize(id, type)
    @id = id
    @type = type
  end

  def self.parse(ingredient_array)
    a = ingredient_array.map do |ingredient|
      Ingredient.new(ingredient[:id],
                ingredient[:type])
    end
  end
end
