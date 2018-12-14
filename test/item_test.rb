require './lib/batter'
require './lib/topping'
require './lib/item'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ItemTest < Minitest::Test

  def test_that_item_exists_and_intakes_a_parsed_json_object
    item = Item.new(
      {
        id: "0001",
        type: "donut",
        name: "Cake",
        ppu: 0.55,
        batters:
          {
            batter:
              [
                { id: "1001", type: "Regular" },
                { id: "1002", type: "Chocolate" },
                { id: "1003", type: "Blueberry" },
                { id: "1004", type: "Devil's Food" }
              ]
          },
        topping:
          [
            { id: "5001", type: "None" },
            { id: "5002", type: "Glazed" },
            { id: "5005", type: "Sugar" },
            { id: "5007", type: "Powdered Sugar" },
            { id: "5006", type: "Chocolate with Sprinkles" },
            { id: "5003", type: "Chocolate" },
            { id: "5004", type: "Maple" }
          ]
      })

    assert_instance_of Item, item
    assert_equal '0001', item.id
    assert_equal 'donut', item.type
    assert_equal 'Cake', item.name
    assert_equal 0.55, item.ppu

    assert_equal 4, item.batters.count
    assert_instance_of Batter, item.batters.last
 
    assert_equal 7, item.toppings.count
    assert_instance_of Topping, item.toppings.first
    assert_instance_of Topping, item.toppings.last
  end
end
