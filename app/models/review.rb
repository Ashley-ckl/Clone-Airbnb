class Review < ApplicationRecord
  belongs_to :space
  belongs_to :booking
  validates :title, presence: true
  validates :content, presence: true
end
