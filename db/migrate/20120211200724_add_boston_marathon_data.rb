class AddBostonMarathonData < ActiveRecord::Migration
  def up
    marathon = RaceCategory.find_by_name("Marathon")

    water = PointCategory.find_by_name("Water")
    restroom = PointCategory.find_by_name("Restroom")
    parking = PointCategory.find_by_name("Parking")
    medical = PointCategory.find_by_name("Medical Aid")
    medical = PointCategory.find_by_name("Information")

    bm = Race.new(:race_category_id => marathon.id,
                  :name => "Boston Marathon",
                  :date => "2012-04-16",
                  :start_time => "09:00",
                  :city => "Boston",
                  :state => "MA",
                  :country => "USA")
    bm.save

    #
    # Water
    #
    Point.create(:race_id => bm.id,
                 :point_category_id => water.id,
                 :latitude => 42.227949,
                 :longitude => -71.521972)

    Point.create(:race_id => bm.id,
                 :point_category_id => water.id,
                 :latitude => 42.229199,
                 :longitude => -71.518874)

    #
    # Restroom
    #
    Point.create(:race_id => bm.id,
                 :point_category_id => restroom.id,
                 :latitude => 42.229199,
                 :longitude => -71.518874)

    Point.create(:race_id => bm.id,
                 :point_category_id => restroom.id,
                 :latitude => 42.219863,
                 :longitude => -71.520352)

    Point.create(:race_id => bm.id,
                 :point_category_id => restroom.id,
                 :latitude => 42.218364,
                 :longitude => -71.520787)

    Point.create(:race_id => bm.id,
                 :point_category_id => restroom.id,
                 :latitude => 42.217247,
                 :longitude => -71.520288)

    #
    # Parking
    #
    Point.create(:race_id => bm.id,
                 :point_category_id => parking.id,
                 :latitude => 42.226424,
                 :longitude => -71.526693)

    Point.create(:race_id => bm.id,
                 :point_category_id => parking.id,
                 :latitude => 42.23123,
                 :longitude => -71.522914)


    #
    # Medical
    #
    Point.create(:race_id => bm.id,
                 :point_category_id => medical.id,
                 :latitude => 42.226424,
                 :longitude => -71.526693)

    Point.create(:race_id => bm.id,
                 :point_category_id => medical.id,
                 :latitude => 42.23123,
                 :longitude => -71.522914)


  end

  def down
    bm = Race.find_by_name("Boston Marathon")
    bm.destroy

    points = Point.find_all_by_race_id(bm.id)

    points.each do | p |
      p.destroy
    end
  end
end
