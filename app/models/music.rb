class Music < ApplicationRecord
  validates :image, presence: true
  attachment :image
  has_many :music_choices, dependent: :destroy
end
