require 'minitest/autorun'
require 'minitest/rg'
require_relative '../songs'

class TestSong < MiniTest::Test
  
  def setup
    @song_01 = Songs.new("Queen", "Bohemian Rhapsondy")
  end

  def test_song_has_artist
    assert_equal("Queen", @song_01.artist)
  end

end