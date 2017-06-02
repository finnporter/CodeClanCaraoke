require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guests'
require_relative '../songs'

class TestGuests < MiniTest::Test

  def setup
    @song_01 = Songs.new("Queen", "Bohemian Rhapsondy")
    @guest_01 = Guests.new("Jamie", 100, @song_01)
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



end