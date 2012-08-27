class Message < ActiveRecord::Base
  attr_accessible :message, :title, :user_id, :type
  belongs_to :user
  
  types = {
    "warning" => "alert-block",
    "info" => "alert-info",
    "success" => "alert-success",
    "error" => "alert-error"
  }
end
