class CreateArrivalCds < ActiveRecord::Migration[5.2]
  def change
    create_table :arrival_cds do |t|
      t.integer :cd_id
      t.integer :arrival_count
      t.datetime :arrival_date

      t.timestamps
    end
  end
end
