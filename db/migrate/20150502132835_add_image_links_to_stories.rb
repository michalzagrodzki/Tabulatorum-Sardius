class AddImageLinksToStories < ActiveRecord::Migration
  def change
    add_column :stories, :main_page_image, :string
    add_column :stories, :header_image, :string
  end
end
