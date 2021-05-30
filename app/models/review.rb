class Review < ApplicationRecord
  belongs_to :flat

  validates :rating, inclusion: 0..5
end
