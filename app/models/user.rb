class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages, :class_name => 'messages', :foreign_key => 'userDestination_id'
  has_many :messages, :class_name => 'messages', :foreign_key => 'userSource_id'
  
  has_many :trajets, :class_name => 'trajets', :foreign_key => 'userAuteur_id'
  belongs_to :trajets, :class_name => 'trajets', :foreign_key => 'userBeneficiaire_id'


  validates :pseudo, :presence => true, :uniqueness => true
validates :email, :presence => true, :uniqueness => true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
  message: "n'est pas une adresse e-mail valable" }
  validates_length_of :pseudo, :in => 3..20, :on => :create, too_short: "doit avoir au moins 3 caractères", too_long: "doit avoir au maximum 20 caractères"
  validates :password, :confirmation => true 
  validates_length_of :password, :in => 6..20, :on => :create, too_short: "doit avoir au moins 6 caractères", too_long: "doit avoir au maximum 20 caractères"
  
end
