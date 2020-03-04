require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')
require_relative('../pub')
require_relative('../drink')

class TestCustomer < Minitest::Test

def setup
  @customer = Customer.new("Gazza", 40)
  @drink1 = Drink.new("Beer", 3.50)
  @drink2 = Drink.new("Vodka", 4)
  @drink3 = Drink.new("Gin", 5)
#  @pub = Pub.new("White_Swan", 500, [@drink1, @drink2, @drink3])
end


def test_customer_has_name
  assert_equal("Gazza", @customer.name)
end

def test_customer_has_wallet
  assert_equal(40, @customer.wallet)
end








end
