class CreatePointCategories < ActiveRecord::Migration
  def change
    create_table :point_categories do |t|
      t.string :name
      t.binary :image

      t.timestamps
    end
  end
end
