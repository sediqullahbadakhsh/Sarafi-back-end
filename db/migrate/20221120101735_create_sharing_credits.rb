class CreateSharingCredits < ActiveRecord::Migration[7.0]
  def change
    create_table :sharing_credits do |t|
      t.bigint :amount
      t.references :sarafis, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
