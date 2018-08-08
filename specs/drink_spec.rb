require 'minitest/autorun'
require 'minitest/rg'
require_relative '../drink.rb'

class TestDrink < MiniTest::Test
  def setup
    cola = {
      name: "Cola",
      price: 1.50
    }
    @drink = Drink.new(cola)
  end

  def test_drink_has_name
    assert_equal("Cola", @drink.name)
  end

  def test_drink_has_price
    assert_equal(1.50, @drink.price)
  end
end
