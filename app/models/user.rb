class User < ApplicationRecord

  has_secure_password
  
  attr_accessor :email, :password, :password_confirmation, :profile_picture, :first_name, :last_name, :dob
  
  # validates_uniqueness_of :email

end
