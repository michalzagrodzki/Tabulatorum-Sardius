class AddLatLngToStory < ActiveRecord::Migration
  def change
    add_column :stories, :latitude, :decimal
    add_column :stories, :longitude, :decimal
  end
end
