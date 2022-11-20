class CreateSarafiPartners < ActiveRecord::Migration[7.0]
  def change
    create_table :sarafi_partners do |t|
      t.string :partner_name
      t.string :phone
      t.string :mobile
      t.string :email
      t.string :address
      t.string :sarafis_references

      t.timestamps
    end
  end
end
