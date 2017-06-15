class CreateCrunchReports < ActiveRecord::Migration[5.1]
  def change
    create_table :crunch_reports do |t|

      t.timestamps
    end
  end
end
