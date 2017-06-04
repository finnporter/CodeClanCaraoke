class Songs

  attr_reader :artist,
              :title,
              :lyrics_file

  def initialize(artist, title, lyrics_file)
    @artist = artist
    @title = title
    @lyrics_file = lyrics_file
  end
  
  
end