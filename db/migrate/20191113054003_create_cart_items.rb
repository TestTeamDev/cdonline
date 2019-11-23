class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :enduser_id
      t.integer :cd_id
      t.integer :item_count

      t.timestamps
    end
  end
end
