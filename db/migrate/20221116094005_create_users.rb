class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile
      t.string :email
      t.string :address
      t.string :photo
      t.references :user_roles, null: false, foreign_key: true

      t.timestamps
    end
  end
end
