class CreateBullishes < ActiveRecord::Migration[5.1]
  def change
    create_table :bullishes do |t|

      t.timestamps
    end
  end
end
