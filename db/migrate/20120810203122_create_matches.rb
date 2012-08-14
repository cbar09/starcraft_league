class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :id
      t.integer :week

      t.timestamps
    end
  end
end
