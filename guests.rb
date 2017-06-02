class Guests

  attr_accessor :name,
                :cash,
                :fav_song,
                :level_of_drunk,
                :tab
                :consumption

  def initialize(name, cash, fav_song)
    @name = name
    @cash = cash
    @fav_song = fav_song
    @level_of_drunk = level_of_drunk
    @tab = 0
    @consumption = []
  end

  def can_afford_room?(price_per_hour)
    return @cash >= price_per_hour
  end

  def pays_for_room(price_per_hour)
    return @cash -= price_per_hour
  end
  
  
end