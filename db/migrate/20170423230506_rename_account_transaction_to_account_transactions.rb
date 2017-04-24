class RenameAccountTransactionToAccountTransactions < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :account_transaction, :account_transactions
  end

  def self.down
    rename_table :account_transaction, :account_transactions
  end
end
