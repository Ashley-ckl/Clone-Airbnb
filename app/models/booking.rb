class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space
  belongs_to :host, class_name: "User"
  validates :start_date, presence: true
  validates :start_time, presence: true
  validates :hours, presence: true
  validates :status, presence: true, inclusion: { in: ['pending', 'accepted', 'rejected']}
end
