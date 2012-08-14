class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :game_number
      t.integer :match_id
      t.integer :map_id
      t.string :video_link

      t.timestamps
    end
  end
end
