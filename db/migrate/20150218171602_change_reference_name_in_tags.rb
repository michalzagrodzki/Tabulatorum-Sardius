class ChangeReferenceNameInTags < ActiveRecord::Migration
  def change
    rename_column :tags, :post_id, :story_id
  end
end
