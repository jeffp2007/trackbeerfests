class BreweriesController < ApplicationController

	def index
		@breweries = Brewery.all
	end

	def new
		@brewery = Brewery.new
	end

	def create
		@brewery = Brewery.create(brewery_params)
		redirect_to breweries_path
	end

	def show
		@brewery = Brewery.find(params[:id])
	end

	def edit
		@brewery = Brewery.find(params[:id])
	end

	def update
		@brewery = Brewery.find(params[:id])
		@brewery.update_attributes(brewery_params)
		redirect_to breweries_path
	end



	private

	def brewery_params
		params.require(:brewery).permit(:brewery_name, :brewery_address, :brewery_city, :brewery_state, :brewery_zip, :brewery_website, :brewery_twitter, :brewery_facebook, :brewery_description)
	end
end