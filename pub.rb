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

def sell_drink(drink, customer, amount)
  @drinks.delete(drink)
  customer.add_drink(drink)
  @till += amount
  customer.wallet -= amount
end

end
