class CreateBankAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_accounts do |t|
      t.string :account_name
      t.string :account_number
      t.string :bank_name
      t.boolean :visibility
      t.references :sarafis, null: false, foreign_key: true

      t.timestamps
    end
  end
end
