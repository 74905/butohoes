class News < ApplicationRecord
  attachment :news_image
  has_many :news_musics, dependent: :destroy
  has_many :musics, through: :news_musics
end
