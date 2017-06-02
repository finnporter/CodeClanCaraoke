require 'minitest/autorun'
require 'minitest/rg'
require_relative '../drink'
require_relative '../guests'

class TestDrink < MiniTest::Test

  def setup
    @drink_01 = Drink.new("Gin Tonic", 5.5, "alcoholic")
    @drink_02 = Drink.new("Coca Cola", 2, "non-alcoholic")
    @guest_01 = Guests.new("Jamie", 100, @song_01)

  end



end
  