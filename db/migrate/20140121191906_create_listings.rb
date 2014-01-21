class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.date :date_of_birth
      t.string :image_url
      t.text :meeting_venue
      t.date :meeting_time
      t.date :date_of_death

      t.timestamps
    end
  end
end
