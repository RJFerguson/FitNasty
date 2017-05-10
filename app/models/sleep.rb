class Sleep < ApplicationRecord
  has_many :user_sleeps
  has_many :users, through: :user_sleeps


  #methods
  # instance methods


  #classMethods
  #find out your progress in comparison to your friends
end
