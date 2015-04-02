class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  acts_as_messageable
  
   def mailboxer_email(object)
   #return the model's email here
     email
  end
  
  #has_many :messages, :class_name => 'messages', :foreign_key => 'userDestination_id'
  #has_many :messages, :class_name => 'messages', :foreign_key => 'userSource_id'
  
  has_many :trajets, dependent: :destroy
  #belongs_to :trajets, :class_name => 'trajets', :foreign_key => 'userBeneficiaire_id'
   
end
