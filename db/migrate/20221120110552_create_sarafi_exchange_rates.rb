class CreateSarafiExchangeRates < ActiveRecord::Migration[7.0]
  def change
    create_table :sarafi_exchange_rates do |t|
      t.string :currency_src
      t.string :currency_trgt
      t.bigint :rate
      t.references :sarafis, null: false, foreign_key: true

      t.timestamps
    end
  end
end
