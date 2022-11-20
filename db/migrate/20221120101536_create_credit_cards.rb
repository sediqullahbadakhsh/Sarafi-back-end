class CreateCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|
      t.string :country
      t.bigint :credit_balance
      t.bigint :benefit
      t.bigint :amount
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
