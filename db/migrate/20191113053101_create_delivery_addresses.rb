class CreateDeliveryAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_addresses do |t|
      t.integer :enduser_id
      t.string :postcode
      t.string :address
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
