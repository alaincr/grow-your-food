class Location < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  validates :city, presence: true
  validates :urban, presence: true
  validates :capacity, presence: true
end
