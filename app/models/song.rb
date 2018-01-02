class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    Genre.pluck(:name)[0]

  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    Artist.update(name: 'Drake')

  end
end
