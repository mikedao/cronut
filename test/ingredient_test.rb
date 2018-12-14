require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require 'pry'

class IngredientTest < MiniTest::Test

  def test_it_exists
    ingredient = Ingredient.new("1001",
                    "Regular"
                  )
  end

  def test_it_can_parse
    ingredients_array = [{ "id": "1001", "type": "Regular" },
    										{ "id": "1002", "type": "Chocolate" },
    										{ "id": "1003", "type": "Blueberry" },
    										{ "id": "1004", "type": "Devil's Food" }
    									  ]
    ingredients = Ingredient.parse(ingredients_array)
    assert_equal 4, ingredients.count
    assert_equal "1002", ingredients[0].id
    assert_equal "Blueberry", ingredients[1].type
  end
end
