class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], message: "%{value} is not a valid rating" }
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :content, presence: true
end
