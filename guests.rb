class Guests

  attr_accessor :name,
                :cash,
                :fav_song_title

  def initialize(name, cash, fav_song_title)
    @name = name
    @cash = cash
    @fav_song_title = fav_song_title
  end

  def can_afford_room?(price_per_hour)
    return @cash >= price_per_hour
  end
  
  
end