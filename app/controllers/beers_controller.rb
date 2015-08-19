class BeersController < ApplicationController

	def index
		@beers = Beer.all
	end

	def new
		@beer = Beer.new
	end

	def create
		@beer = Beer.create(beer_params)
		redirect_to beers_path
	end

	def show
		@beer = Beer.find(params[:id])
		@brewery = Brewery.find(Beer.find(params[:id]).brewery_id)
		@events = Event.all
		@beer_events = Beer.find(params[:id]).event_id

		@beer_supplies = BeerSupply.all
	end

	def edit
		@beer = Beer.find(params[:id])
		@events = Event.all
	end

	def update
		puts "update: #{params.inspect}"
		@beer = Beer.find(params[:id])
		@event_id = Beer.find(params[:id]).event_id
		
		#work on this
		@events = params['event_ids']

		new_arr = []

		@events.each do |event|
			begin
				BeerSupply.create!(beer_id: @beer.id, event_id: event.to_i)
			rescue => e
			  puts "#{e.message} #{e.backtrace}"
			end

			#list of all beer supply pairings: BeerSupply.where(beer_id: @beer.id, event_id: @event.id)
			#(beer_id: 2, event_id: 2) that didn’t belong
			#delete on those records

			new_arr  << event.to_i
		end
		#end work on this

		#Only stores 1 value because field is an int. How do we store multiple events? Need to convert field in DB to string?
		#@beer.update_attributes(:event_id => new_arr)

		@beer.update_attributes(beer_params)
		redirect_to beer_path(@beer)


	end

	def select_event

	end


	private

	def beer_params
		params.require(:beer).permit(:beer_name, :beer_style, :beer_abv, :beer_ibu, :beer_description, :brewery_id, :event_id)
	end

end