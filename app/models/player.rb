# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  handle     :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ActiveRecord::Base
  #include Comparable
  belongs_to :division
  has_many :matches_players
  has_many :games_players
  has_many :matches, :through => :matches_players
  has_many :games, :through => :games_players
  attr_accessible :handle, :name, :division_id
  
  validates_presence_of :division_id, :handle
  
  def self.division(division_name)
    division = Division.where("name = '#{division_name}'").first
    return Player.where("division_id = '#{division.id}'")
  end
  
  def wins
    wins = 0
    
    Match.all.each do |m|
      if(m.p1 == self || m.p2 == self)
        if(m.get_winner == self)
          wins = wins + 1
        end
      end
    end
    
    return wins
  end
  
  def losses
    losses = 0
    
    Match.all.each do |m|
      if(m.p1 == self || m.p2 == self)
        if(m.get_loser == self)
          losses = losses + 1
        end
      end
    end
    
    return losses
  end
  
  def pct
    w = self.wins
    l = self.losses
    w + l == 0 ? -1 : (w / (w + l)) 
  end
  
  def <=>(other_player)
    other_player.pct <=> pct
  end
  
  
end


