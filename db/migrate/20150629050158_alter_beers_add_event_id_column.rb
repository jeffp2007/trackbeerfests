class AlterBeersAddEventIdColumn < ActiveRecord::Migration
  def change
  	add_column :beers, :event_id, :integer
    add_index :beers, :event_id
  end
end
