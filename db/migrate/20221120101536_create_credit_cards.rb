class CreateCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|
      t.string :country
      t.bigint :aproximat_amount
      t.bigint :actual_amount
      t.bigint :benefit
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
