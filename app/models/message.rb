class Message < ActiveRecord::Base
  belongs_to :users, :class_name => 'users', :foreign_key => 'id'
  
 
end
