class Rooms

  attr_reader :name,
              :capacity
              

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @guests = []
  end

  def guest_count
    return @guests.length
  end

  def check_in_guest(person)
    @guests << person
  end


  
  
end