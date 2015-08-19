class Beer < ActiveRecord::Base
	#serialize :event_id
	belongs_to :brewery
	has_many :beer_supplies
	has_many :events, :through => :beer_supplies
end
