require_relative('drink.rb')

class Customer
  attr_reader(:name, :age)
  attr_accessor(:wallet, :level)
  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @level = 0
  end

  def buy_drink(drink)
    @wallet -= drink.price
    @level += drink.level
  end

  def buy_food(food)
    @wallet -= food.price
    @level -= food.rejuvenation
  end
end
