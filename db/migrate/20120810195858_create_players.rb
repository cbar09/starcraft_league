class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :handle
      t.string :name
      t.integer :division_id
      t.timestamps
    end
  end
end
