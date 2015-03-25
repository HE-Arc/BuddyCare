class AddLatitudeAndLongitudeToTrajets < ActiveRecord::Migration
  def change
    add_column :trajets, :latitude, :float
    add_column :trajets, :longitude, :float
  end
end
