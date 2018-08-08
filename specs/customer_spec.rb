require 'minitest/autorun'
require 'minitest/rg'
require_relative '../customer.rb'
require_relative '../pub.rb'
require_relative '../food.rb'

class TestCustomer < MiniTest::Test
  def setup
    @drink = Drink.new({ name: "Whisky", price: 3.50, level: 5, stock: 10})
    @food = Food.new({ name: "Chips", price: 1.50, rejuvenation: 2})
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

  def test_customer_gets_rejuvinated
    @customer.buy_drink(@drink) # 5
    @customer.buy_drink(@drink) # 10
    @customer.buy_food(@food) # 8
    assert_equal(8, @customer.level)
  end
end
