class AddLatitudeArriveeAndLongitudeArriveeToTrajets < ActiveRecord::Migration
  def change
    add_column :trajets, :latitudeArrivee, :float
    add_column :trajets, :longitudeArrivee, :float
  end
end
