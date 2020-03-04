require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../pub")
require_relative("../customer")
require_relative("../drink")

class TestPub < Minitest::Test

  def setup
    @drink1 = Drink.new("Beer", 3.50)
    @drink2 = Drink.new("Vodka", 4)
    @drink3 = Drink.new("Gin", 5)

    @customer = Customer.new("Gazza", 40)

    @drinks = [@drink1, @drink2, @drink3]
    @pub = Pub.new("White_Swan", 500, @drinks)

  end

  def test_pub_has_a_name
    assert_equal("White_Swan", @pub.name)
  end

  def test_pub_has_a_till
    assert_equal(500, @pub.till)
  end

  def test_pub_has_drinks
    assert_equal(@drinks, @pub.drinks)
  end

  def test_pub_sell_drink
    @pub.sell_drink(@drink1, @customer, 3.50)
    assert_equal(2, @pub.drink_count())
    assert_equal(1, @customer.drink_count())
    assert_equal(503.50, @pub.till)
    assert_equal(36.50, @customer.wallet)
  end

end
