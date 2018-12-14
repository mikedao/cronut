require './lib/topping'
require 'minitest/autorun'
require 'minitest/pride'

class ToppingTest < Minitest::Test

  def test_that_batter_exists
    topping = Topping.new({ id: "5002", type: "Glazed" })
    assert_instance_of Topping, topping
  end

  def test_that_it_has_attributes
    topping = Topping.new({ id: "5002", type: "Glazed" })

    assert_equal topping.id, "5002"
    assert_equal topping.type, "Glazed"
  end
end
