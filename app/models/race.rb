class Race < ActiveRecord::Base
  has_many :points
  belongs_to :race_category

  def self.show_options
    {:only => [:id, :name, :date, :city, :state, :country], :methods => [:category_name], :include => [:points]}
  end

  def self.list_options
    {:only => [:id, :name, :date], :methods => [:category_name]}
  end

  def category_name
    race_category.name
  end
end
