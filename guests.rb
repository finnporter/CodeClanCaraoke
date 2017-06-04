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
    @level_of_drunk = 0
    @tab = 0
  end

  def can_afford_room?(price_per_hour)
    return @cash >= price_per_hour
  end

  def pays_for_room(price_per_hour)
    return @cash -= price_per_hour
  end

  def pays_for_drink(price)
    return @cash -= price
  end

  def gets_drunk(drink)
    @level_of_drunk += drink.strength
  end

  def is_drunk?
    return true if @level_of_drunk >= 10
  end

  def guest_sings(song)
    lyrics = File.read(song)
  end
  
  
end