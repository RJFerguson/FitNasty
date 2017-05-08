class Sleep < ApplicationRecord
  has_many :user_sleeps 
  has_many :users, through: :user_sleeps 

end
