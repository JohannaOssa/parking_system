class Location < ActiveRecord::Base
  has_many :slots

  validates :location_latitude, :location_longitude, presence: true, numericality: true

end
