class AddTransactionNumberToAcoountTransactions < ActiveRecord::Migration[5.0]
  def change
    add_column :acoount_transactions, :transaction_number, :string
  end
end
