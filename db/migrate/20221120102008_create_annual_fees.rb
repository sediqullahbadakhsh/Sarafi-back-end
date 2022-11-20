class CreateAnnualFees < ActiveRecord::Migration[7.0]
  def change
    create_table :annual_fees do |t|
      t.bigint :annual_fee
      t.references :sarafi, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
