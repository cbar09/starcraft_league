class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :id
      t.string :player1
      t.string :player2
      t.string :winner
      t.date :week

      t.timestamps
    end
  end
end
