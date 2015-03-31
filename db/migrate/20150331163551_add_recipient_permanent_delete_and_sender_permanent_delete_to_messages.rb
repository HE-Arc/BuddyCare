class AddRecipientPermanentDeleteAndSenderPermanentDeleteToMessages < ActiveRecord::Migration
  def self.up
    add_column :User, :recipient_permanent_delete, :boolean, :default => false
    add_column :User, :sender_permanent_delete, :boolean, :default => false
  end

  def self.down
    remove_column :User, :recipient_permanent_delete
    remove_column :User, :sender_permanent_delete
  end
end
