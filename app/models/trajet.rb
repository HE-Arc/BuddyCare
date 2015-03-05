class Trajet < ActiveRecord::Base
  belongs_to :users, :class_name => 'users', :foreign_key => 'id'
  has_many :users, :class_name => 'users', :foreign_key => 'id'
  
  
end
