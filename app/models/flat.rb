class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :search_by_name_and_address,
    against: [ :name, :address ],
    using: {
      tsearch: { prefix: true }
    }
end
