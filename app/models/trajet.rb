class Trajet < ActiveRecord::Base
  belongs_to :users, :class_name => 'users', :foreign_key => 'id'
  has_many :users, :class_name => 'users', :foreign_key => 'id'

  before_save :saveCitiesCoord

def saveCitiesCoord
  city1 = Geocoder.coordinates(self.departVille)
  city2 = Geocoder.coordinates(self.arriveeVille)
   self.latitude = city1.first
   self.longitude = city1.last
   self.latitudeArrivee = city2.first
   self.longitudeArrivee = city2.last
end

end
