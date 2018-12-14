require 'minitest/autorun'
require 'minitest/pride'
require './lib/import.rb'
require './lib/item.rb'
require 'pry'

class ImportTest < Minitest::Test

  def setup
    @items = Import.items_hash
  end

  def test_it_can_make_an_item
    item_hash = @items.first[1].first
    item = Item.new(item_hash["id"],
                    item_hash["type"],
                    item_hash["name"],
                    item_hash["ppu"])

    assert item.class, Item
    assert item.id, "0001"
    assert item.type, "donut"
    assert item.name, "Cake"
    assert item.ppu, 0.55
  end

  def test_it_can_make_a_bunch_of_items
    items = Import.items

    assert items.count, 5
    assert items.first.class, Item
  end

end