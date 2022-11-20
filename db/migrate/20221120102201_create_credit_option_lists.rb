class CreateCreditOptionLists < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_option_lists do |t|
      t.string :country
      t.string :operator_name
      t.string :currency_src_trgt
      t.bigint :amount
      t.bigint :price
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
