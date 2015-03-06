class RemoveStoryPart2AndStoryPart3FromStories < ActiveRecord::Migration
  def change
    remove_column :stories, :story_part_2, :text
    remove_column :stories, :Story_part_3, :text
  end
end
