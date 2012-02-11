class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :point_category_id
      t.integer :race_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
