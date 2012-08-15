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
  belongs_to :division
  has_many :matches_players
  has_many :games_players
  has_many :matches, :through => :matches_players
  has_many :games, :through => :games_players
  attr_accessible :handle, :name, :division_id
end
