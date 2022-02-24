class Song
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre) 
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        # shovel method b/c you want to add a new genre and artist into a new array
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end