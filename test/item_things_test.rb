require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/item_things.rb'

class ItemThingTest<Minitest::Test

  def setup
    thing_data = { "id": "5006", "type": "Chocolate with Sprinkles" }
    @item_thing = ItemThings.new(thing_data)
  end

  def test_it_exists
    assert_instance_of ItemThings, @item_thing
  end

  def test_it_has_attributes
    assert_equal "5006", @item_thing.id
    assert_equal "Chocolate with Sprinkles", @item_thing.type
  end

end
