class Review < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :content, :rating
  validates :rating, inclusion: { in: (0..5).to_a }
  validates :rating, numericality: { only_integer: true }
end
