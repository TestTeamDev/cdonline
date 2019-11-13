class CreateFavorits < ActiveRecord::Migration[5.2]
  def change
    create_table :favorits do |t|
      t.integer :enduser_id
      t.integer :cd_id

      t.timestamps
    end
  end
end
