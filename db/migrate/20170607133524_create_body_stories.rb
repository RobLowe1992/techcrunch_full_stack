class CreateBodyStories < ActiveRecord::Migration[5.1]
  def change
    create_table :body_stories do |t|
      t.string :title
      t.string :author
      t.string :sample
      t.string :html
      t.string :pic
      t.string :url

      t.timestamps
    end
  end
end
