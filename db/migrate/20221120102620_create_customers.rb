class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :address
      t.string :password
      t.references :sarafis, null: false, foreign_key: true

      t.timestamps
    end
  end
end
