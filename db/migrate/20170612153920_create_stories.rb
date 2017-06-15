class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :author
      t.string :category
      t.text :body
      t.string :img
      t.string :description

      t.timestamps
    end
  end
end
