require 'minitest/autorun'
require 'minitest/rg'
require_relative '../songs'

class TestSong < MiniTest::Test
  
  def setup
    @song_01 = Songs.new("Queen", "Bohemian Rhapsondy", "./lyrics/@song_01.txt")
    @song_02 = Songs.new("Boston", "More than a feeling", "./lyrics/song_02.txt")
  end

  def test_song_has_artist
    assert_equal("Queen", @song_01.artist)
  end

  def test_song_has_title
    assert_equal("Bohemian Rhapsondy", @song_01.title)
  end

end