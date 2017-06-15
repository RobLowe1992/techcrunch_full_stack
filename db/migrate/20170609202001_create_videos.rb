class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :link
      t.string :channel
      t.string :description
      t.string :img

      t.timestamps
    end
  end
end
