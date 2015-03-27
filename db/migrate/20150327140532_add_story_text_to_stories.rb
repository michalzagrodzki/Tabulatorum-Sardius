class AddStoryTextToStories < ActiveRecord::Migration
  def change
    add_column :stories, :story_text, :text
  end
end
