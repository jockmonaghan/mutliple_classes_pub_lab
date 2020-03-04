class Pub

attr_accessor :name, :till, :drinks

def initialize(name, till, drinks)
  @name = name
  @till = till
  @drinks = drinks
end

def drink_count()
  return @drinks.count()
end

def sell_drink(drink, customer)
  if customer.age >= 18
    if customer.drunkness <= 10
      @drinks.delete(drink)
      customer.add_drink(drink)
      @till += drink.price
      customer.wallet -= drink.price
    end
  end
end

end
