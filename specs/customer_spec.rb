require 'minitest/autorun'
require 'minitest/rg'
require_relative '../customer.rb'
require_relative '../pub.rb'

class TestCustomer < MiniTest::Test
  def setup
    cola = {
      name: "Cola",
      price: 1.50
    }
    @drink = Drink.new(cola)
    @customer = Customer.new("Sly Stalone", 50.00)
  end

  def test_customers_name
    assert_equal("Sly Stalone", @customer.name)
  end

  def test_customers_wallet
    assert_equal(50.00, @customer.wallet)
  end

  def test_buy_drink
    @customer.buy_drink(@drink)
    assert_equal(48.50, @customer.wallet)
  end
end
