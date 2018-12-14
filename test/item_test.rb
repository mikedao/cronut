require './lib/item.rb'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class ItemTest < MiniTest::Test

  def test_it_exists
    item = Item.new("0001",
                    "donut",
                    "Cake",
                    0.55,
                    [],
                    []
                  )
  end

  def test_it_can_read_from_json
    items = Item.read_from_json('./data/cronut.json')

    assert_equal 3, items.count
    assert_equal "0001", items[0].id
    assert_equal "Regular", items[0].batters[0].type
    assert_equal "None", items[0].toppings[0].type

  end
end
