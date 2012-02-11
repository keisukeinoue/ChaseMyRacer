class AddCategories < ActiveRecord::Migration
  def up
    RaceCategory.create :name => "Marathon"
    RaceCategory.create :name => "Half Marathon"

    PointCategory.create :name => "Water"
    PointCategory.create :name => "Restroom"
    PointCategory.create :name => "Parking"
    PointCategory.create :name => "Medical Station"
    PointCategory.create :name => "Aid Station"
    PointCategory.create :name => "Information"

  end

  def down
    RaceCategory.delete_all
    RaceCategory.delete_all
  end

end
