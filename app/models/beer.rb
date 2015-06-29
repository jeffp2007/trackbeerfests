class Beer < ActiveRecord::Base
	belongs_to :brewery
	has_many :beer_supplies
	has_many :events, :through => :beer_supplies
end
