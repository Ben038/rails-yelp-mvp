class Review < ApplicationRecord
  RATING = [0, 1, 2, 3, 4, 5]
  belongs_to :restaurant
  validates :content, :rating, presence: true, allow_blank: false
  validates :rating, inclusion: { in: RATING }, numericality: { only_integer: true }
end
