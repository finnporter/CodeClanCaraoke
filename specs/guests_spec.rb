require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guests'

class TestGuests < MiniTest::Test

  def setup
    @guest_01 = Guests.new("Jamie")
  end

  def test_guest_has_name
    assert_equal("Jamie", @guest_01.name)
  end



end