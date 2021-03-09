class NewsMusic < ApplicationRecord
  belongs_to :news
  belongs_to :music
end
