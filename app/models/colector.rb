class Colector < ApplicationRecord
  has_and_belongs_to_many :phone
  has_and_belongs_to_many :colector_has_user
end
