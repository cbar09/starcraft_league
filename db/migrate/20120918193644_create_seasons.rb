class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :name
      t.date :start_date
      t.integer :weeks
      t.integer :playoff_weeks

      t.timestamps
    end
  end
end
