require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')

class TestDrink < Minitest::Test

def test_drink_has_name
  drink = Drink.new("Beer", 3.50)
  assert_equal("Beer", drink.name)
end

def test_drink_has_price
  drink = Drink.new("Beer", 3.50)
  assert_equal(3.50, drink.price)
end 











end
