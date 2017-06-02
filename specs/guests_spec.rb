require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guests'

class TestGuests < MiniTest::Test

  def setup
    @guest_01 = Guests.new("Jamie", 100, "More than a feeling")
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