require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')
require_relative('../pub')
require_relative('../drink')

class TestCustomer < Minitest::Test

def setup
  @customer = Customer.new("Gazza", 40, 52)
  @drink1 = Drink.new("Beer", 3.50, 2)
  @drink2 = Drink.new("Vodka", 4, 6)
  @drink3 = Drink.new("Gin", 5, 5)
  @pub = Pub.new("White_Swan", 500, [@drinks])
end

def test_customer_has_name
  assert_equal("Gazza", @customer.name)
end

def test_customer_has_age
  assert_equal(52, @customer.age)
end

def test_customer_has_wallet
  assert_equal(40, @customer.wallet)
end

def test_customer_wallet_amount
  assert_equal(40, @customer.wallet)
end

def test_customer_buy_drink
  @customer.add_drink(@drink1)
  assert_equal(1, @customer.drink_count())
end








end
