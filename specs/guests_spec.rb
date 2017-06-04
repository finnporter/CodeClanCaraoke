require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guests'
require_relative '../songs'
require_relative '../drink'

class TestGuests < MiniTest::Test

  def setup
    
    @song_00 = Songs.new("Queen", "Bohemian Rhapsondy", "./lyrics/@song_00.txt")
    # song_00 exists for testing only (contains only 1 line of the lyrics.)
    @song_01 = Songs.new("Queen", "Bohemian Rhapsondy", "./lyrics/@song_01.txt")

    @guest_01 = Guests.new("Jamie", 100, @song_01)

    @drink_01 = Drink.new("Gin Tonic", 5.5, 3)
    @drink_02 = Drink.new("Coca Cola", 2, 0)
  end

  def test_guest_has_name
    assert_equal("Jamie", @guest_01.name)
  end

  def test_guest_has_cash
    assert_equal(100, @guest_01.cash)
  end 

  def test_guest_can_afford_room__returns_true
    assert_equal(true, @guest_01.can_afford_room?(90))
  end

  def test_guest_pays_for_room
    assert_equal(10, @guest_01.pays_for_room(90))
  end

  def test_guest_pays_for_drink
    @guest_01.pays_for_drink(@drink_02.price)
    assert_equal(98, @guest_01.cash)
  end

  def test_level_of_drunk_rises
    @guest_01.gets_drunk(@drink_01)
    @guest_01.gets_drunk(@drink_01)
    assert_equal(6, @guest_01.level_of_drunk)
  end

  def test_is_drunk?
    @guest_01.gets_drunk(@drink_01)
    @guest_01.gets_drunk(@drink_01)
    @guest_01.gets_drunk(@drink_01)
    @guest_01.gets_drunk(@drink_01)
    assert_equal(true, @guest_01.is_drunk?)
  end

  def test_guest_sings
    assert_equal("Is this the real life? Is this just fantasy?", @guest_01.guest_sings(@song_00.lyrics_file))
  end



end