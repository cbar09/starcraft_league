# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  number     :integer
#  match_id   :integer
#  map_id     :integer
#  video      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ActiveRecord::Base
  belongs_to :map
  belongs_to :match
  has_many :players, :through => :games_players
  has_many :games_players
  attr_accessible :map, :number, :match_id, :map_id, :video
  
end
