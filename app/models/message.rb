class Message < ActiveRecord::Base
  attr_accessible :message, :title, :user_id
  belongs_to :user
end
