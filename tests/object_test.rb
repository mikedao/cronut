
require 'minitest/autorun'
require 'minitest/pride'
require './data/objects'
require './objects/Item'
require './objects/Batter'


class ObjectTest < Minitest::Test

  def test_it_exists
    hash = {"id" => 1, 'type'=> "good", 'name' => 'first', 'ppu' => 'idk'}
   item = Item.new(hash)

   assert_instance_of Item, item
  end

  def test_its_an_array
    cronut_data = File.read('./data/cronut.json')
    data_hash = JSON.parse(cronut_data)
    items = make_item_array(data_hash)

    assert_equal 3, items.count
  end

  def test_items_have_attributes
    cronut_data = File.read('./data/cronut.json')
    data_hash = JSON.parse(cronut_data)
    items = make_item_array(data_hash)

    assert_equal "0001", items[0].id
    assert_equal "Pastry", items[1].name
    assert_equal "donut hole", items[2].type
    assert_equal 0.55, items[0].ppu
  end

  # def test_items_have_batter
  #   cronut_data = File.read('./data/cronut.json')
  #   data_hash = JSON.parse(cronut_data)
  #   items = make_item_array(data_hash)
  #   binding.pry
  #   assert_equal "1001", items[0].batters.id
  # end

end
