class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :author
      t.string :body
      t.string :img

      t.timestamps
    end
  end
end
