class Song
  attr_accessor :name, :artist, :genre

  ####################
  # Class Variables
  ###################
  @@count = 0
  @@artists = []
  @@genres = []

  #######################
  # Instance methods
  #######################
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1  #@@count = @@count + 1
    @@artists << @artist
    @@genres << @genre
  end

  ##########################
  # Class Methods
  ##########################
  def self.count  #Song.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    count_items(@@genres)
  end

  def self.artist_count
    count_items(@@artists)
  end


  def self.count_items(array)
    count_hash = Hash.new(0)

    array.each do |item|
      count_hash[item] += 1
    end

    count_hash
  end

end
