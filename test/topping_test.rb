require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/topping.rb'
require './lib/item_things.rb'

class ToppingTest<Minitest::Test

  def setup
    topping_data = { "id": "5006", "type": "Chocolate with Sprinkles" }
    @topping = Topping.new(topping_data)
  end

  def test_it_exists
    assert_instance_of Topping, @topping
  end

  def test_it_has_attributes
    assert_equal "5006", @topping.id
    assert_equal "Chocolate with Sprinkles", @topping.type
  end

end
