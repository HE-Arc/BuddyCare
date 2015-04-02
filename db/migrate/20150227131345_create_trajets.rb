class CreateTrajets < ActiveRecord::Migration
  def change
    create_table :trajets do |t|
      t.integer :userBeneficiaireID
      t.integer :userAuteurID
      t.string :departVille
      t.string :arriveeVille
      t.float :distance
      t.float :prix
      t.integer :nbPlacesDisponible
      t.datetime :date
      t.references :user, index: true

      t.timestamps
    end
  end
end
