class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.integer :race_category_id
      t.string :name
      t.integer :year
      t.date :date
      t.time :start_time
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
