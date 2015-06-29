class CreateBeerSupplies < ActiveRecord::Migration
  def change
    create_table :beer_supplies do |t|

      t.integer :beer_id
      t.integer :event_id

      t.timestamps
    end
  end
end
