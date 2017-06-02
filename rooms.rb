class Rooms

  attr_reader :name,
              :capacity,
              :price_per_hour
              

  def initialize(name, capacity, price_per_hour)
    @name = name
    @capacity = capacity
    @price_per_hour = price_per_hour
    @guests = []
    @songs = []
  end

  def guest_count
    return @guests.length
  end

  def check_in_guest(person)
    @guests << person if person.can_afford_room?(@price_per_hour)
    person.pays_for_room(@price_per_hour)
  end

  def check_out_guest(person)
    index = @guests.index(person)
    @guests.slice!(index, 1)
  end

  def song_count
    return @songs.length
  end

  def add_song(song)
    @songs << song
  end

  def available_song_titles_in_room
    return @songs
  end
  
  def is_full?
    @guests.length >= @capacity
    #wanted to use guest_count() but += method doesn't work in this case.
  end

  def room_has_fav_song(person)
    for song in @songs
      return true if person.fav_song == song
    end
    return false
  end



  
  
end