class RemoveStoryTextFromStories < ActiveRecord::Migration
  def change
    remove_column :stories, :story_text, :text
  end
end
