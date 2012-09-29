class ChangeVideoLinkToText < ActiveRecord::Migration
  
  def change
    remove_column :games, :video_link
    add_column :games, :video_link, :text 
  end
  
end
