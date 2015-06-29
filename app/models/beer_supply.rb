class BeerSupply < ActiveRecord::Base
	belongs_to :beer
	belongs_to :event
end
