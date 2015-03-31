class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages, :class_name => 'messages', :foreign_key => 'userDestination_id'
  has_many :messages, :class_name => 'messages', :foreign_key => 'userSource_id'
  
  has_many :trajets, :class_name => 'trajets', :foreign_key => 'userAuteur_id'
  belongs_to :trajets, :class_name => 'trajets', :foreign_key => 'userBeneficiaire_id'
   
end
