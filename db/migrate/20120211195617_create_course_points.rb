class CreateCoursePoints < ActiveRecord::Migration
  def change
    create_table :course_points do |t|
      t.integer :race_id
      t.integer :sequence
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
