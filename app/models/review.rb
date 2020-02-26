class Review < ApplicationRecord
  belongs_to :restaurant

  # A review must have a parent restaurant.
  # A review must have content and a rating.
  validates :restaurant, presence: true
  validates :content, presence: true
  # The rating should be a number between 0 and 5.
  validates :rating, presence: true, inclusion: { in: (0..5) }, numericality: true
end
