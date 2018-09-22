class Colector < ApplicationRecord
  has_and_belongs_to_many :phone
  has_many :orders
  has_many :users, through: :orders 
end
