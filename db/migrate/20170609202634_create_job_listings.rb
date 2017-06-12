class CreateJobListings < ActiveRecord::Migration[5.1]
  def change
    create_table :job_listings do |t|
      t.string :url
      t.string :listing
      t.string :location
      t.date :date

      t.timestamps
    end
  end
end
