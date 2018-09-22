class Order < ApplicationRecord
  belongs_to :user
  belongs_to :colector
  # belongs_to :user
  #belongs_to :profile
end
