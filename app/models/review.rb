class Review < ApplicationRecord
  belongs_to :space
  belongs_to :booking
end
