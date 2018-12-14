require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/batter.rb'
require './lib/item_things.rb'

class StoreTest<Minitest::Test

  def setup
    batter_data = { "id": "1001", "type": "Regular" }
    @batter = Batter.new(batter_data)
  end

  def test_it_exists
    assert_instance_of Batter, @batter
  end

  def test_it_has_attributes
    assert_equal "1001", @batter.id
    assert_equal "Regular", @batter.type
  end

end
