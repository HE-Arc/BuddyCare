class Trajet < ActiveRecord::Base
  belongs_to :users, :class_name => 'users', :foreign_key => 'id'
  has_many :users, :class_name => 'users', :foreign_key => 'id'
  
  geocoded_by :departVille, :latitude  => :latitude, :longitude => :longitude
  before_validation :geocode
  geocoded_by :arriveeVille, :latitude  => :latitudeArrivee, :longitude => :longitudeArrivee
  after_validation :geocode

  :geocode
end
