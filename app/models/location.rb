class Location < ApplicationRecord
  LOCATION = ["S'initier à l'agriculture urbaine", "Découvrir les bonnes pratiques à la campagne"]
  belongs_to :user
  belongs_to :booking
  validates :city, presence: true
  validates :urban, presence: true, inclusion: { in: LOCATION }
  validates :capacity, presence: true
end

#add dates after

