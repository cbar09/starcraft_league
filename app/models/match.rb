# == Schema Information
#
# Table name: matches
#
#  id         :integer          not null, primary key
#  week       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Match < ActiveRecord::Base
  belongs_to :race
  has_many :games
  has_many :matches_players
  has_many :players, :through => :matches_players
  attr_accessible :week, :player_ids, :race_id, :game_ids
  accepts_nested_attributes_for :games
  
  
  def display
    return "[week " + week.to_s + "] " + p1.handle + " vs " + p2.handle
  end
  
  def p1
    return players[0]
  end
  
  def p2
    return players[1]
  end
  
  def state
    #return games.find
  end
  
end
