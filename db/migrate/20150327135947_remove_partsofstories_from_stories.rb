class RemovePartsofstoriesFromStories < ActiveRecord::Migration
  def change
    remove_column :stories, :story_part_1, :text
    remove_column :stories, :story_part_2, :text
    remove_column :stories, :story_part_3, :text
  end
end
