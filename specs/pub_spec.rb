require 'minitest/autorun'
require 'minitest/rg'
require_relative '../customer.rb'
require_relative '../pub.rb'
require_relative '../drink.rb'

class TestPub < MiniTest::Test
  def setup
    @pub = Pub.new("The Slug and Lettuce", 100.00, ["Cola", "Whisky", "Vodka"])
    @drink = Drink.new({ name: "Cola", price: 1.50 })
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
    assert_equal(101.50, @pub.take_payment(@drink))
  end
end
