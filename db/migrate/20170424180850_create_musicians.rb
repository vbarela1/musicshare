class CreateMusicians < ActiveRecord::Migration[5.0]
  def change
    create_table :musicians do |t|
      t.string :name, null: false
      t.string :albums
      t.text :comments

      t.timestamps
    end
  end
end
