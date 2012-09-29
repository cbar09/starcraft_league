# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  game_number :integer
#  match_id    :integer
#  map_id      :integer
#  video_link  :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Game < ActiveRecord::Base
  belongs_to :map
  belongs_to :match
  has_many :players, :through => :games_players
  has_many :games_players, :dependent => :destroy
  attr_accessible :map_id, :game_number, :match_id, :video_link, :players_attributes, :games_players_attributes
  
  accepts_nested_attributes_for :games_players
  validates_presence_of :map_id, :game_number, :match_id
  
  def winner
    p1_winner = games_players[0].winner;
    p2_winner = games_players[1].winner;
    
    if p1_winner && p2_winner
      nil
    elsif p1_winner
      Player.find(games_players[0].player_id)
    elsif p2_winner
      Player.find(games_players[1].player_id)
    else
      nil
    end
  end
  
  def race(player_id)
    return games_players.where("player_id='#{player_id}'").first.race.name
  end
  
end
