class Music < ApplicationRecord
  belongs_to :category
  validates :image, presence: true
  attachment :image
  has_many :music_choices, dependent: :destroy
  has_many :news_musics, dependent: :destroy
  has_many :news, through: :news_musics
end
