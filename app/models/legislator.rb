require_relative '../../db/config'

class Legislator < ActiveRecord::Base
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :party, :presence => true

end
