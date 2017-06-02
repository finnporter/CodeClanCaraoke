require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'
require_relative '../guests'
require_relative '../songs'

class TestRooms < MiniTest::Test
  
  def setup
    @room_01 = Rooms.new("Green", 2)

    @guest_01 = Guests.new("Jamie")
    @guest_02 = Guests.new("Eugene")

    @song_01 = Songs.new("Queen", "Bohemian Rhapsondy")
    @song_02 = Songs.new("Madonna", "Like a Virgin")
    @song_03 = Songs.new("David Bowie", "Life on Mars")

  end

  def test_room_has_name
    assert_equal("Green", @room_01.name)
  end

  def test_room_capacity
    assert_equal(2, @room_01.capacity)
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

  def test_add_song_to_room
    @room_01.add_song(@song_01)
  end

  def test_room_is_full__returns_false
    @room_01.check_in_guest(@guest_01)
    assert_equal(false, @room_01.is_full?)
  end

  def test_room_is_full__returns_true
    @room_01.check_in_guest(@guest_01)
    @room_01.check_in_guest(@guest_02)
    assert_equal(true, @room_01.is_full?)
  end

end