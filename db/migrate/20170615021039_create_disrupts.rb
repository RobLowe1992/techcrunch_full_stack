class CreateDisrupts < ActiveRecord::Migration[5.1]
  def change
    create_table :disrupts do |t|

      t.timestamps
    end
  end
end
