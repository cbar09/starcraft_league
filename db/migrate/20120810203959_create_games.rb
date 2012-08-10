class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :number
      t.string :player1_race
      t.string :player2_race
      t.string :map
      t.string :winner
      t.string :video

      t.timestamps
    end
  end
end
