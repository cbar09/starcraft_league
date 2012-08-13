# == Schema Information
#
# Table name: matches_players
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  match_id   :integer
#  winner     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MatchesPlayer < ActiveRecord::Base
  belongs_to :player
  belongs_to :match
  attr_accessible :match_id, :player_id, :winner
end
