class Season < ActiveRecord::Base
  attr_accessible :name, :playoff_weeks, :start_date, :weeks
  
  has_many :matches
end
