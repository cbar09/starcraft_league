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
  has_many :games
  has_many :matches_players
  has_many :players, :through => :matches_players
  
  accepts_nested_attributes_for :games
  
  attr_accessible :week, :player_ids, :games_attributes
  
  validates_presence_of :week, :player_ids
  
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
    return "In progress"
  end
  
  def self.byes(week)
    week_matches = Match.where("week = '#{week}'")
    players = {}
    week_matches.each do |m|
      players[m.p1.handle] = m.p1.id
      players[m.p2.handle] = m.p2.id
    end
    
    byes = {}
    
    Player.all.each do |p|
      if players[p.handle].nil?
        byes[p.handle] = p.id
      end
    end
    
    return byes
  end
  
end
