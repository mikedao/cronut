require './lib/batter'
require 'minitest/autorun'
require 'minitest/pride'

class BatterTest < Minitest::Test

  def test_that_batter_exists
    batter = Batter.new({ id: "1001", type: "Devil's Food" })
    assert_instance_of Batter, batter
  end

  def test_that_it_has_attributes
    batter = Batter.new({ id: "1001", type: "Devil's Food" })

    assert_equal "1001", batter.id
    assert_equal "Devil's Food", batter.type
  end
end
