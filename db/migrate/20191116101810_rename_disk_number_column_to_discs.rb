class RenameDiskNumberColumnToDiscs < ActiveRecord::Migration[5.2]
  def change
  	rename_column :discs, :disk_number, :disc_number
  end
end
