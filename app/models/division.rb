class Division < ActiveRecord::Base
  has_many :players
  attr_accessible :name
end
