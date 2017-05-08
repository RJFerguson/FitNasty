class User < ApplicationRecord
  has_secure_password 
  
  has_many :user_sleeps 
  has_many :sleeps, through: :user_sleeps 

  has_many :user_exercises
  has_many :exercises, through: :user_exercises

  has_many :user_foods 
  has_many :foods, through: :user_foods 


end
