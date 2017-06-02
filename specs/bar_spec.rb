require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bar'
require_relative '../guests'

class TestBar < MiniTest::Test

  def setup

    @bar = Bar.new()

    @guest_01 = Guests.new("Jamie", 100, @song_01)

  end


end
  