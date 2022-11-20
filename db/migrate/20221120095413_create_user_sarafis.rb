class CreateUserSarafis < ActiveRecord::Migration[7.0]
  def change
    create_table :user_sarafis do |t|
      t.references :users, null: false, foreign_key: true
      t.references :sarafis, null: false, foreign_key: true

      t.timestamps 
    end
  end
end
