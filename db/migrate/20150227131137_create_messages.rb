class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :userSourceID
      t.integer :userDestinationID
      t.string :objetMessage
      t.string :message
      

      t.timestamps
    end
  end
end
