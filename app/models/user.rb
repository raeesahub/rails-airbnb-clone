class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :flats
  has_many :bookings
  has_many :reviews, through: :orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
