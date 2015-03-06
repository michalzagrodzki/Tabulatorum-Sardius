class AddStoryParts2And3AndAdviceToStories < ActiveRecord::Migration
  def change
    add_column :stories, :story_part_2, :text
    add_column :stories, :story_part_3, :text
    add_column :stories, :advice, :text
  end
end
