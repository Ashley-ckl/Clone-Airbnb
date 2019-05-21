class Space < ApplicationRecord
  belongs_to :user
  validates :capacity, presence: true, numericality: { only_integer: true}
  validates :capacity, presence: true, numericality: { only_integer: false}
  validates :price, presence: true
end
