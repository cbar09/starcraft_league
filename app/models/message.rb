class Message < ActiveRecord::Base
  attr_accessible :message, :title, :user_id, :message_type_id
  belongs_to :user, :message_types
end
