class AddStoryPart2And3ToStories < ActiveRecord::Migration
  def change
    add_column :stories, :story_part_2, :text
    add_column :stories, :story_part_3, :text
  end
end
