class CreateFeatStories < ActiveRecord::Migration[5.1]
  def change
    create_table :feat_stories do |t|
      t.string :url
      t.string :image
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
