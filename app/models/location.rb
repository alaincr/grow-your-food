class Location < ApplicationRecord
  # LOCATION = ["S'initier à l'agriculture urbaine", "Découvrir les bonnes pratiques à la campagne"]
  belongs_to :user
  has_many :bookings
  validates :city, presence: true
  # validates :urban, presence: true
  validates :capacity, presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end


