class CreatePostages < ActiveRecord::Migration[5.2]
  def change
    create_table :postages do |t|
    	t.integer :postage, default: 500

      t.timestamps
    end
  end
end
