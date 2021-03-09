class Category < ApplicationRecord
  validates :name, uniqueness: true
  has_many :musics
  
  def to_param
    name
  end

end
