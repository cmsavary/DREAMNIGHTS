class Room < ApplicationRecord
  belongs_to :hotel
  has_one_attached :photo

  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 1 }
  validates :price_per_night, presence: true, numericality: { greater_than_or_equal_to: 1 }
end
