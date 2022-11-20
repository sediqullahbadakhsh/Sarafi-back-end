class CreateHawalaOuts < ActiveRecord::Migration[7.0]
  def change
    create_table :hawala_outs do |t|
      t.bigint :hawala_no
      t.string :currency_src
      t.string :currency_trgt
      t.string :from_src
      t.string :to_trgt
      t.bigint :amount
      t.bigint :misc_tax
      t.string :description
      t.boolean :pay
      t.boolean :status
      t.references :sarafis, null: false, foreign_key: true
      t.references :partners, null: false, foreign_key: true
      t.references :customers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
