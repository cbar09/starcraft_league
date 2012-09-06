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
  
  accepts_nested_attributes_for :games_players, :reject_if => :invalid_game?
  validates_presence_of :map_id, :game_number, :match_id
  
  def valid_game?
    
end
