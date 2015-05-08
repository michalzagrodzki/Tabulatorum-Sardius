class AddChapterIdToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :chapter_id, :integer
  end
end
