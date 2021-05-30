class Review < ApplicationRecord
  belongs_to :flat

  validates :rating, inclusion: { in: 1..5 }
end
