require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'
require_relative '../guests'
require_relative '../songs'

class TestRooms < MiniTest::Test
  
  def setup
    @room_01 = Rooms.new("Green", 2, 25)

    @song_01 = Songs.new("Queen", "Bohemian Rhapsondy", "./song_01.txt")
    @song_02 = Songs.new("Boston", "More than a feeling", "/song_02.txt")
    @song_03 = Songs.new("Madonna", "Like a Virgin", "./song_03.txt")

    @guest_01 = Guests.new("Jamie", 100, @song_02)
    @guest_02 = Guests.new("Eugene", 80, @song_03)

  end

  def test_room_has_name
    assert_equal("Green", @room_01.name)
  end

  def test_room_capacity
    assert_equal(2, @room_01.capacity)
  end

  def test_room_price
    assert_equal(25, @room_01.price_per_hour)
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
    assert_equal(1, @room_01.song_count)
  end

  def test_songs_are_available
    @room_01.add_song(@song_01)
    assert_equal([@song_01], @room_01.available_song_titles_in_room)
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

  def test_room_has_fav_song__returns_true
    @room_01.check_in_guest(@guest_01)
    @room_01.add_song(@song_02)
    assert_equal(true, @room_01.room_has_fav_song(@guest_01))
  end

  def test_room_has_fav_song__returns_false
    @room_01.check_in_guest(@guest_01)
    @room_01.add_song(@song_04)
    assert_equal(false, @room_01.room_has_fav_song(@guest_01))
  end




end