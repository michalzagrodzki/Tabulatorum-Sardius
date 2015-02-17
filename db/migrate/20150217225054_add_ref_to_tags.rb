class AddRefToTags < ActiveRecord::Migration
  def change
    add_reference :tags, :post, index: true
    add_foreign_key :tags, :posts
  end
end
