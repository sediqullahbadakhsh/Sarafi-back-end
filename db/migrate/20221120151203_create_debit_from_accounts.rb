class CreateDebitFromAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :debit_from_accounts do |t|
      t.bigint :amount
      t.string :currency_src
      t.string :currency_trgt
      t.bigint :exchange_rate
      t.bigint :exchange_amount
      t.references :sarafis, null: false, foreign_key: true

      t.timestamps
    end
  end
end
