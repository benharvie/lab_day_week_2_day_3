require 'minitest/autorun'
require 'minitest/rg'
require_relative '../drink.rb'

class TestDrink < MiniTest::Test
  def setup
    @drink = Drink.new({ name: "Whisky", price: 3.50, level: 5})
  end

  def test_drink_has_name
    assert_equal("Whisky", @drink.name)
  end

  def test_drink_has_price
    assert_equal(3.50, @drink.price)
  end

  def test_drink_has_level
    assert_equal(5, @drink.level)
  end
end
