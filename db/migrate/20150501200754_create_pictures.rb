class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.text :description
      t.string :link
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
