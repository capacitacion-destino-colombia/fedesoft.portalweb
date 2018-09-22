class User < ApplicationRecord
  has_many :phones
  has_many :orders
  has_many :colectors, through: :orders 
end
