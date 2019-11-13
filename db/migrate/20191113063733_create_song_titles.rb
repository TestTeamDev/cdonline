class CreateSongTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :song_titles do |t|

      t.timestamps
      t.integer :disc_id
      t.string :song
      t.datetime :created_at
      t.datetime :update_at

    end
  end
end
