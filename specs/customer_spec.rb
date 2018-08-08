require 'minitest/autorun'
require 'minitest/rg'
require_relative '../customer.rb'
require_relative '../pub.rb'

class TestCustomer < MiniTest::Test
  def setup
    @drink = Drink.new({ name: "Whisky", price: 3.50, level: 5})
    @customer = Customer.new("Sly Stalone", 50.00, 21)
  end

  def test_customers_name
    assert_equal("Sly Stalone", @customer.name)
  end

  def test_customers_wallet
    assert_equal(50.00, @customer.wallet)
  end

  def test_buy_drink
    @customer.buy_drink(@drink)
    assert_equal(46.50, @customer.wallet)
  end

  def test_adds_level
    @customer.buy_drink(@drink)
    assert_equal(5, @customer.level)
  end
end
