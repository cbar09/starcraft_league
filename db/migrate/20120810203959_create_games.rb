class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :number
      t.integer :match_id
      t.integer :map_id
      t.string :video

      t.timestamps
    end
  end
end
