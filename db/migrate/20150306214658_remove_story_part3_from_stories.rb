class RemoveStoryPart3FromStories < ActiveRecord::Migration
  def change
    remove_column :stories, :story_part_3, :text
  end
end
