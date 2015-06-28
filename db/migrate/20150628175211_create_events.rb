class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.string :event_name
      t.string :event_loc_name
      t.string :event_loc_address
      t.string :event_loc_city
      t.string :event_loc_state
      t.string :event_loc_zip
      t.string :event_loc_country
      t.string :event_website
      t.date :event_start_date
      t.date :event_end_date
      t.text :event_description

      t.timestamps
    end
  end
end
