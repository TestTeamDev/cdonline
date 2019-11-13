class CreateInquires < ActiveRecord::Migration[5.2]
  def change
    create_table :inquires do |t|

      t.timestamps

      t.string :name
      t.string :mail
      t.string :title
      t.text :body
      t.string :re_title
      t.text :re_body
      t.datetime :created_at
      t.datetime :update_at
    end
  end
end
