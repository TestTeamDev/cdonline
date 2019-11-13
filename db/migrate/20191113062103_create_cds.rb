class CreateCds < ActiveRecord::Migration[5.2]
  def change
    create_table :cds do |t|

      t.timestamps
      t.integer :artist_id
      t.integer :genre_id
      t.integer :label_id
      t.string :title
      t.integer :type
      t.string :image_id
      t.integer :price
      t.integer :sell_status
      t.date :release_date
      t.datetime :deleted_at
      t.integer :view_number, default: 0
      t.datetime :created_at
      t.datetime :update_at
    end
  end
end
