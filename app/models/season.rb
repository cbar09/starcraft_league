class Season < ActiveRecord::Base
  attr_accessible :name, :playoff_weeks, :start_date, :weeks
  
  has_many :matches
  
  def current_week
    day_of_season = (Date.today - start_date).to_i
    return day_of_season >= 0 ? (day_of_season / 7) + 1 : 0
  end
  
  def end_season
    return start_date + (weeks * 7)
  end
  
  def end_playoffs
    return start_date + (weeks + playoff_weeks) * 7
  end
  
  def current?
    return Date.today >= start_date && Date.today <= end_playoffs
  end
end
