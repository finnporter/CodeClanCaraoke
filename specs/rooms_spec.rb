require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'
require_relative '../guests'

class TestRooms < MiniTest::Test
  
  def setup
    @room_01 = Rooms.new("Green", 4)
    @guest_01 = Guests.new("Jamie")
    @guest_02 = Guests.new("Eugene")

  end

  def test_room_has_name
    assert_equal("Green", @room_01.name)
  end

  def test_room_has_capacity
    assert_equal(4, @room_01.capacity)
  end

  def test_check_in_guest
    @room_01.check_in_guest(@guest_01)
    assert_equal(1, @room_01.guest_count)
  end

  def test_check_out_guest
    @room_01.check_in_guest(@guest_01)
    @room_01.check_in_guest(@guest_02)
    @room_01.check_out_guest(@guest_01)
    assert_equal(1, @room_01.guest_count)
  end

end