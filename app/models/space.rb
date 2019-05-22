class Space < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :capacity, presence: true
  validates :price_per_hour, presence: true, numericality: { only_integer: false}
  validates :amenities, presence: true
  validates :description, presence: true
  validates :name, presence: true
  validates :location, presence: true
end
