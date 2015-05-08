class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.text :text
      t.integer :story_id

      t.timestamps
    end
  end
end
