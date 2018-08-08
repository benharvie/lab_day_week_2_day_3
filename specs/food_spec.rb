require 'minitest/autorun'
require 'minitest/rg'
require_relative '../customer.rb'
require_relative '../pub.rb'
require_relative '../food.rb'

class TestFood < MiniTest::Test
  def setup
    @food = Food.new({ name: "Chips", price: 1.50, rejuvenation: 2})
  end

  def test_food_has_name
    assert_equal("Chips", @food.name)
  end

  def test_food_has_price
    assert_equal(1.50, @food.price)
  end

  def test_food_has_rejuvination
    assert_equal(2, @food.rejuvenation)
  end
end
