require 'minitest/autorun'
require 'minitest/rg'
require 'minitest/emoji'
require_relative '../drink'

class TestDrink < MiniTest::Test

  def setup
      @drink_01 = Drink.new("Gin Tonic", 5.5, 3)
      @drink_02 = Drink.new("Coca Cola", 2, 0)

  end

  def test_drink_has_name
    assert_equal("Gin Tonic", @drink_01.name)    
  end

  def test_drink_has_price
    assert_equal(5.5, @drink_01.price)
  end

  def test_drink_has_strength
    assert_equal(3, @drink_01.strength)
  end
 


end
  