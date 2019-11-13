class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|
     t.integer :order_id
     t.integer :cd_id
     t.integer :order_count
     t.integer :subtotal_price
     t.decimal :order_tax_rate

      t.timestamps
    end
  end
end
