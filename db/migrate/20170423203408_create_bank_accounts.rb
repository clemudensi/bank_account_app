class CreateBankAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :bank_accounts do |t|
      t.decimal :balance
      t.string :account_number
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
