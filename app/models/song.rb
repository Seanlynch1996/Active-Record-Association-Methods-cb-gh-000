class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    Genre.pluck(:name)[0]
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    art = Artist.find_by(name: self)
    art.update(:name "Drake")
  end
end
