class Movie < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :ratings

  has_one_attached :poster 
end
