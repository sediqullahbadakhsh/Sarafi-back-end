class CreateDebits < ActiveRecord::Migration[7.0]
  def change
    create_table :debits do |t|
      t.bigint :amount
      t.string :description
      t.bigint :from_src
      t.bigint :to_trgt
      t.references :sarafis, null: false, foreign_key: true
   
      t.timestamps
    end
    add_foreign_key :debits, :customers, column: :from_src
    add_foreign_key :debits, :customers, column: :to_trgt
  end
end
