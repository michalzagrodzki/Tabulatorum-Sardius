class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.text :text
      t.integer :story_id

      t.timestamps
    end
  end
end
