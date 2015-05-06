class RemoveLinkImage1FromStories < ActiveRecord::Migration
  def change
    remove_column :stories, :link_image_1, :string
  end
end
