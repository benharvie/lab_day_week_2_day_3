class Food
  attr_reader(:food, :name, :price, :rejuvenation)
  def initialize(food)
    @food = food
    @name = food[:name]
    @price = food[:price]
    @rejuvenation = food[:rejuvenation]
  end


end
