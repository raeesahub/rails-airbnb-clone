class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  def total_price
    (end_date - start_date).to_i * flat.price
  end
end
