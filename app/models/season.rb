class Season < ActiveRecord::Base
  attr_accessible :name, :playoff_weeks, :start_date, :weeks
  
  has_many :matches
  
  def self.current_week(season_id)
    day_of_season = (Date.today - Season.find(season_id).start_date).to_i
    return day_of_season >= 0 ? (day_of_season / 7) + 1 : 0 
  end
end
