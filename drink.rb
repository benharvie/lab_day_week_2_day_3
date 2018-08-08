class Drink
  attr_reader(:drink, :name, :price, :level)
  def initialize(drink)
    @drink = drink
    @name = @drink[:name]
    @price = @drink[:price]
    @level = @drink[:level]
  end
end
