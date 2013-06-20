require_relative '../../db/config'

class Legislator < ActiveRecord::Base
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :party, :presence => true


  def summary
    "Name: #{self.firstname} #{self.lastname} Title: #{self.title} State: #{self.state}"
  end
end
