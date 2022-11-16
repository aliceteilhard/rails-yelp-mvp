class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_presence_of :category, :name, :address
  validates :category, inclusion: { in: %w[japanese chinese italian belgian french] }
end
