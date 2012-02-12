class Point < ActiveRecord::Base
  belongs_to :point_category

  def as_json(options = {})
    super(options.merge(:methods => [:category_name], :only => [:id, :latitude, :longitude]))
  end

  def category_name
    point_category.name
  end


end
