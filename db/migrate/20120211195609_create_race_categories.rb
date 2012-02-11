class CreateRaceCategories < ActiveRecord::Migration
  def change
    create_table :race_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
