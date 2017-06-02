class Guests

  attr_accessor :name,
                :cash,
                :fav_song
                :bar_tab

  def initialize(name, cash, fav_song)
    @name = name
    @cash = cash
    @fav_song = fav_song
    @bar_tab = 0
  end

  def can_afford_room?(price_per_hour)
    return @cash >= price_per_hour
  end


  
  
end