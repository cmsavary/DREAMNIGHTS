class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user
  validates :start_at, presence: true
  validates :ends_at, presence: true
end
