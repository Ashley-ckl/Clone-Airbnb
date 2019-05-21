class Space < ApplicationRecord
  belongs_to :user
  validates :capacity, presence: true, numericality: { only_integer: true}
  validates :price, presence: true, numericality: { only_integer: false}
  validates :amenities, presence: true
  validates :description, presence: true
  validates :name, presence: true
  validates :space_type, presence: true
  validates :location, presence: true
end
