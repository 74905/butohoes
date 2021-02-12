class MusicChoice < ApplicationRecord
  validates :lyrics, presence: true
  validates :song_title, presence: true
  belongs_to :music
  attachment :background_image
end
