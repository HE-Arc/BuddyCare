class Trajet < ActiveRecord::Base
  belongs_to :user
  validates :departVille, presence: true
  validates :arriveeVille, presence: true
  validates :prix, :numericality => {:greater_than_or_equal_to => 0}
  validates :nbPlacesDisponible, :numericality => {:greater_than_or_equal_to => 1}

  before_save :saveCitiesCoord

def saveCitiesCoord
  
  city1 = Geocoder.coordinates(self.departVille)
  city2 = Geocoder.coordinates(self.arriveeVille)
  
  

  self.latitude = city1.first
  self.longitude = city1.last
  self.latitudeArrivee = city2.first
  self.longitudeArrivee = city2.last
  
  
  preDlat = self.latitudeArrivee - self.latitude
  preDlon = self.longitudeArrivee - self.longitude
  r = 6371
  dLat = Geocoder::Calculations.to_radians(preDlat)
  dLon = Geocoder::Calculations.to_radians(preDlon)
  a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
    Math.cos(Geocoder::Calculations.to_radians(self.latitude)) * Math.cos(Geocoder::Calculations.to_radians(self.latitudeArrivee)) *
    Math.sin(dLon / 2) * Math.sin(dLon / 2)
  c = 2 * Math.asin((Math.sqrt(a)))
  d = r * c
  self.distance = d.round(2)
end

end
