class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews

  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_address,
                  against: %i[name address],
                  using: {
                    tsearch: { prefix: true }
                  }

  def average_rating
    sum = 0
    reviews.each { |review| sum += review.rating }
    sum / reviews.length if reviews.any?
  end
end
