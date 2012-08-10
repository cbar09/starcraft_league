# == Schema Information
#
# Table name: maps
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Map < ActiveRecord::Base
  has_many :games
  attr_accessible :name
end
