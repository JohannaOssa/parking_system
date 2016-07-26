class Location < ActiveRecord::Base
  has_many :slots

  #validates :location_latitude, :location_longitude, presence: true, numericality: true
  validates :address, presence: true

  after_validation :geocode, if: ->(obj) {obj.address.present? && obj.address_changed?}
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
end
