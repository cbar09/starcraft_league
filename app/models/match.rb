# == Schema Information
#
# Table name: matches
#
#  id         :integer          not null, primary key
#  week       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Match < ActiveRecord::Base
  belongs_to :race
  has_many :games
  has_many :matches_players
  has_many :players, :through => :matches_players
  attr_accessible :week, :player_ids, :race_id
  
  def match_list
    
  end
  
  def display
    return "[week " + week.to_s + "] " + p1.handle + " vs " + p2.handle
  end
  
  def p1
    return players[0]
  end
  
  def p2
    return players[1]
  end
  
end
