class Customer

attr_accessor(:name,:wallet,:age)


def initialize(name, wallet, age)
  @name = name
  @wallet = wallet
  @age = age
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
  end
end

# def customer_buy_drink
#   if @customer.wallet >= @drink1.price
#     return true
#     add_drink(@drinks1)
#   end
# end






end
