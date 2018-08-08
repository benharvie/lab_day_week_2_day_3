require_relative('drink.rb')
require_relative('customer.rb')

class Pub
  attr_reader(:name, :till, :drinks, :stock)
  attr_writer(:till)
  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def take_payment(drink)
    @till += drink.price
  end

  def legal?(age)
    return true if age >= 18
  end

  def check_drunkeness?(customer)
    if customer.level >= 20
      return true
    end
  end

  def stock_value(drink)
    p drink
    p drink.price
    p drink.stock
    return (drink.price * drink.stock)
  end
end
