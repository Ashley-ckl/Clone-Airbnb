class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true, numericality: { only_integer: false}
  validates :status, presence: true, :in => ['pending', 'confirmed', 'declined']
end
