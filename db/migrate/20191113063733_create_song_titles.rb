class CreateSongTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :song_titles do |t|

      t.timestamps
      t.integer :disc_id
      t.string :song

    end
  end
end
