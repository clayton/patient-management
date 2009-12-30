class Pet < ActiveRecord::Base
  belongs_to :owner

  validates_presence_of  :name
  validates_presence_of  :species
  validates_inclusion_of :species, :in => %w( dog cat bird snake ), :message => "Species: %s is not included in the list of accepted species"

end
