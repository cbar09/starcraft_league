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
  has_many :games
  has_many :matches_players
  has_many :players, :through => :matches_players
  attr_accessible :week, :player_ids
  
  def find_herbivores
      self.player.find(:all);
  end
end
