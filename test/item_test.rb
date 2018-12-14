require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/item.rb'
require './lib/batter.rb'
require './lib/topping.rb'
require './lib/item_things.rb'

class StoreTest<Minitest::Test

  def setup
    item_data = {
      "id": "0001",
      "type": "donut",
      "name": "Cake",
      "ppu": 0.55,
      "batters":
        {"batter":
            [{ "id": "1001", "type": "Regular" },
              { "id": "1002", "type": "Chocolate" },
              { "id": "1003", "type": "Blueberry" },
              { "id": "1004", "type": "Devil's Food" }]},
      "topping":
        [{ "id": "5001", "type": "None" },
          { "id": "5002", "type": "Glazed" },
          { "id": "5005", "type": "Sugar" },
          { "id": "5007", "type": "Powdered Sugar" },
          { "id": "5006", "type": "Chocolate with Sprinkles" },
          { "id": "5003", "type": "Chocolate" },
          { "id": "5004", "type": "Maple" }]}
    @item = Item.new(item_data)
  end

  def test_it_exists
    assert_instance_of Item, @item
  end

  def test_it_has_basic_attributes
    assert_equal "0001", @item.id
    assert_equal "donut", @item.type
    assert_equal "Cake", @item.name
    assert_equal 0.55, @item.ppu
  end

  def test_it_generates_batters
    assert_equal 4, @item.batter.count
    assert_equal "1001", @item.batter.first.id
    assert_equal "Regular", @item.batter.first.type
  end

  def test_it_generates_toppings
    assert_equal 7, @item.toppings.count
    assert_equal "5001", @item.toppings.first.id
    assert_equal "None", @item.toppings.first.type
  end

end
