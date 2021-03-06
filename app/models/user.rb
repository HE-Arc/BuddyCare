class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  
  validates :pseudo, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  
  
  
  acts_as_messageable
  
   def mailboxer_email(object)
   #return the model's email here
     email
  end
  
  has_many :trajets, dependent: :destroy
   
end
