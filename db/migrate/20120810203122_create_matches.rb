class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :id
      t.integer :week
      t.integer :season_id
      t.timestamps
    end
  end
end
