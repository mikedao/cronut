require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/store.rb'
require './lib/item.rb'
require './lib/batter.rb'
require './lib/topping.rb'
require './lib/item_things.rb'

class StoreTest<Minitest::Test

  def test_it_exists
    store = Store.new

    assert_instance_of Store, store
  end

  def test_it_starts_with_no_pastries
    store = Store.new

    assert_equal [], store.pastries
  end

  def test_it_can_generate_pastries_from_json
    store = Store.new

    store.generate_pastries

    assert_equal 3, store.pastries.count
    assert_equal "0001", store.pastries.first.id
    assert_equal "donut", store.pastries.first.type
    assert_equal "Cake", store.pastries.first.name
    assert_equal 0.55, store.pastries.first.ppu
    assert_equal 4, store.pastries.first.batter.count
    assert_equal 7, store.pastries.first.toppings.count
  end

end
