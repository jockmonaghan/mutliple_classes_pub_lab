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

  # def test_pub_has_drinks
  #   drinks = @pub.get_drink
  #   assert_equal(@drink1.name, @pub.drinks)
  # end










end
