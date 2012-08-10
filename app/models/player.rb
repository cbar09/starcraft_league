class Player < ActiveRecord::Base
  has_many :matches, :dependant => destroy
  attr_accessible :handle, :name
end
