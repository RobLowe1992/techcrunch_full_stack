class CreateAllVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :all_videos do |t|

      t.timestamps
    end
  end
end
