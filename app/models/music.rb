class Music < ApplicationRecord
  validates :image, presence: true
  attachment :image
end
