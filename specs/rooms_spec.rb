require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'

class TestRooms < MiniTest::Test
  
  def setup
    @room_01 = Rooms.new("Green", 4)
  end

end