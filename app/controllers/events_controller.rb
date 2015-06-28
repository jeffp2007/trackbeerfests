class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def create
		Event.create(event_params)
		redirect_to events_path
	end

	def show
		@event = Event.find(params[:id])
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		@event.update_attributes(event_params)
		redirect_to events_path
	end


	private

	def event_params
		params.require(:event).permit(:event_name, :event_loc_name, :event_loc_address, :event_loc_city, :event_loc_state, :event_loc_zip, :event_start_date, :event_end_date, :event_website, :event_description)
	end

end