class Profile < ApplicationRecord
  belongs_to :course
  has_and_belongs_to_many :donations
  has_and_belongs_to_many :complaints
  has_and_belongs_to_many :users
  has_and_belongs_to_many :colector
  belongs_to :boxs
  has_and_belongs_to_many :recicle_report
end
