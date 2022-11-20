class CreatePartnerBalances < ActiveRecord::Migration[7.0]
  def change
    create_table :partner_balances do |t|
      t.bigint :amount_payed
      t.string :type
      t.references :sarafi_partners, null: false, foreign_key: true

      t.timestamps
    end
  end
end
