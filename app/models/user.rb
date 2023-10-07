class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :role, inclusion: { in: %w[admin ordinary_user] }

  has_many :bookings

  def admin?
    role == 'admin'
  end

  def ordinary_user?
    role == 'ordinary_user'
  end
end
