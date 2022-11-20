class CreateCreditPurchaseRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_purchase_records do |t|
      t.string :country
      t.string :operator_name
      t.string :phone
      t.bigint :amount_local
      t.bigint :amount_exchange
      t.bigint :amount_pay
      t.references :sarafis, null: false, foreign_key: true
      t.references :customers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
