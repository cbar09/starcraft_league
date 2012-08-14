class CreateMatchesPlayers < ActiveRecord::Migration
  def change
    create_table :matches_players do |t|
      t.integer :player_id
      t.integer :match_id

      t.timestamps
    end
  end
end
