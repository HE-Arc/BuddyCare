class User < ActiveRecord::Base
  has_many :messages, :class_name => 'messages', :foreign_key => 'userDestination_id'
  has_many :messages, :class_name => 'messages', :foreign_key => 'userSource_id'
  
  has_many :trajets, :class_name => 'trajets', :foreign_key => 'userAuteur_id'
  belongs_to :trajets, :class_name => 'trajets', :foreign_key => 'userBeneficiaire_id'
  
   attr_accessor :password
EMAIL_REGEX = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/
  validates :pseudo, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
validates :email, :presence => true, :uniqueness => true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: "only allows letters" }
 #password_confirmation attr
validates_length_of :password, :in => 6..20, :on => :create 
  
  
  
end
