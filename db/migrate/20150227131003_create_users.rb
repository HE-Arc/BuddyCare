class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      #t.string :pseudo
      t.string :password
      t.string :email
      t.float :solde
      t.decimal :note
      

      t.timestamps
    end
  end
end
