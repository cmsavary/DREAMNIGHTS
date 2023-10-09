class Room < ApplicationRecord
  belongs_to :hotel
  has_one_attached :photo
  has_many :bookings, dependent: :destroy

  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 1 }
  validates :price_per_night, presence: true, numericality: { greater_than_or_equal_to: 1 }

  def index
    @rooms = Room.all
  end

  private

  def new
    @room = Room.new
  end
end
