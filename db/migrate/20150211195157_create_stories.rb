class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.text :story_part_1
      t.string :link_image_1

      t.timestamps null: false
    end
  end
end
