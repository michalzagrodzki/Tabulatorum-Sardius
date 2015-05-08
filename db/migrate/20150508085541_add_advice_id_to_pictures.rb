class AddAdviceIdToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :advice_id, :integer
  end
end
