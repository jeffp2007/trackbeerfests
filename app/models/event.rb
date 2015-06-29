class Event < ActiveRecord::Base
	has_many :beer_supplies
	has_many :beers, :through => :beer_supplies
end
