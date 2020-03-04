class Customer

attr_accessor(:name,:wallet,:age, :drunkness)


def initialize(name, wallet, age)
  @name = name
  @wallet = wallet
  @age = age
  @drunkness = 0
  @drinks = []
end

def drink_count()
  return @drinks.count()
end

def customer_wallet_amount
  return @wallet.size
end

def add_drink(new_drink)
  if @wallet >= new_drink.price
    @drinks.push(new_drink)
    @drunkness += new_drink.alcohol
  end
end

end
