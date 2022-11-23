class CreateCredits < ActiveRecord::Migration[7.0]
  def change
    create_table :credits do |t|
      t.bigint :amount
      t.string :description
      t.date :recipt_date
      t.string :recipt_time
      t.bigint :recipt_number
      t.string :currency
      t.references :bank_accounts, null: false, foreign_key: true
      t.references :customers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
