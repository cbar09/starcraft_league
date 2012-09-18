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
  has_many :games, :dependent => :destroy
  has_many :matches_players, :dependent => :destroy
  has_many :players, :through => :matches_players
  belongs_to :season
  
  accepts_nested_attributes_for :games, :reject_if => :invalid_game
  
  attr_accessible :week, :player_ids, :games_attributes, :season_id
  
  validates_presence_of :week, :player_ids
  #validates_associated :games => validate_game
  
  
  def validate_game
  end
  
  def invalid_game(attributes)
      p1 = attributes["games_players_attributes"]["0"]
      p2 = attributes["games_players_attributes"]["1"]
      return p1["winner"] == p2["winner"] || p1["race_id"] == p2["race_id"]
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
  
  def get_wins(player)
    wins = 0
    games.each do |game|
      game.games_players.each do |game_player|
        if game_player.winner && game_player.player_id == player.id
          wins = wins + 1
        end
      end
    end
    return wins
  end
  
  def get_winner
    return get_wins(p1) == 3 ? p1 : (get_wins(p2) == 3 ? p2 : nil)
  end
  
  def state
    winner = get_winner
    return winner.nil? ? "In Progress" : winner.handle + " won"
  end
  
  def division 
    return players[1].division.name
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
