# == Schema Information
#
# Table name: games_players
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  game_id    :integer
#  race_id    :integer
#  winner     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GamesPlayer < ActiveRecord::Base
  belongs_to :player
  belongs_to :game
  belongs_to :race
  attr_accessible :player_id, :race_id, :winner
end
