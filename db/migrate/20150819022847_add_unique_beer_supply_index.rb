class AddUniqueBeerSupplyIndex < ActiveRecord::Migration
  def change
  	add_index :beer_supplies, [:beer_id, :event_id], :unique => true  	
  end
end
