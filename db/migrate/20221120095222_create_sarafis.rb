class CreateSarafis < ActiveRecord::Migration[7.0]
  def change
    create_table :sarafis do |t|
      t.string :sarafi_code
      t.string :sarafi_name
      t.string :owner
      t.string :license_number
      t.string :mobile
      t.string :email
      t.string :address
      t.string :logo
      t.boolean :status

      t.timestamps
    end
  end
end
