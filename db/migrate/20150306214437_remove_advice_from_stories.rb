class RemoveAdviceFromStories < ActiveRecord::Migration
  def change
    remove_column :stories, :advice, :text
  end
end
