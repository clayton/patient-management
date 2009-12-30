class Owner < ActiveRecord::Base
  has_many :pets
  validates_presence_of :name
  validates_presence_of :email
end
