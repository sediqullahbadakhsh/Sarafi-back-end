class CreateAccountDebits < ActiveRecord::Migration[7.0]
  def change
    create_table :account_debits do |t|
      t.bigint :amount
      t.references :debit_from_accounts, null: false, foreign_key: true
      t.references :bank_accounts, null: false, foreign_key: true

      t.timestamps
    end
  end
end
