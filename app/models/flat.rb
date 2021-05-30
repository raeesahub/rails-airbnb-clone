class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews

  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :search_by_name_and_address,
    against: [ :name, :address ],
    using: {
      tsearch: { prefix: true }
    }

  def average_rating
    sum = 0
    reviews.each { |review| sum += review.rating }
    sum / reviews.length
  end

end
