require 'minitest/autorun'
require 'minitest/rg'
require_relative '../customer.rb'
require_relative '../pub.rb'
require_relative '../drink.rb'

class TestPub < MiniTest::Test
  def setup
    @pub = Pub.new("The Slug and Lettuce", 100.00, ["Cola", "Whisky", "Vodka"])
    @drink = Drink.new({ name: "Whisky", price: 3.50, level: 5, stock: 10})
    @customer = Customer.new("Sly Stalone", 50.00, 21)
  end

  def test_pubs_name
    assert_equal("The Slug and Lettuce", @pub.name)
  end

  def test_pubs_till
    assert_equal(100.00, @pub.till)
  end

  def test_pubs_drinks
    assert_equal(["Cola", "Whisky", "Vodka"], @pub.drinks)
  end

  def test_take_payment
    assert_equal(103.50, @pub.take_payment(@drink))
  end

  def test_customer_is_legal
    assert_equal(true, @pub.legal?(@customer.age))
  end

  def test_customer_is_drunk
    @customer.buy_drink(@drink)
    @customer.buy_drink(@drink)
    @customer.buy_drink(@drink)
    @customer.buy_drink(@drink)

    assert_equal(true, @pub.check_drunkeness?(@customer))
  end

  def test_pub_has_stock
    assert_equal(10, @drink.stock)
  end

  def test_pub_stock_value
    assert_equal(35.00, @pub.stock_value(@drink))
  end
end
