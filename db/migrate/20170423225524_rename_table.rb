class RenameTable < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :acoount_transactions, :account_transaction
  end

  def self.down
    rename_table :acoount_transactions, :account_transaction
  end

end
