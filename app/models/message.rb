class Message < ActiveRecord::Base

  attr_accessible :message, :title, :user_id, :alert
  belongs_to :user
  
  @@TYPES = {
    "Warning" => "alert-block",
    "Info" => "alert-info",
    "Success" => "alert-success",
    "Error" => "alert-error"
  }
  
  def self.types
    @@TYPES
  end
  
  def html_class
    @@TYPES[alert]
  end
  
end
