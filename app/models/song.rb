class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  # def artist_name=(name)
  #   self.artist = Artist.find_by(name: name)
  # end
  #
  # def artist_name
  #   self.try(:artist).try(:name)
  # end
  #
  # def genre_name=(name)
  #   self.genre = Genre.find_by(name: name)
  # end
  #
  # def genre_name
  #   self.try(:genre).try(:name)
  # end

end
