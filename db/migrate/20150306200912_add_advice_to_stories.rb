class AddAdviceToStories < ActiveRecord::Migration
  def change
    add_column :stories, :advice_text, :text
  end
end
