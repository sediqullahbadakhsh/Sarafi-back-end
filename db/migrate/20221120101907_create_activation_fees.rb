class CreateActivationFees < ActiveRecord::Migration[7.0]
  def change
    create_table :activation_fees do |t|
      t.bigint :activation_fee
      t.references :users, null: false, foreign_key: true
      t.references :sarafi, null: false, foreign_key: true

      t.timestamps
    end
  end
end
