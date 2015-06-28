class BeersController < ApplicationController

	def index
		@beers = Beer.all
	end

	def new
		@beer = Beer.new
	end

	def create
		Beer.create(beer_params)
		redirect_to beers_path
	end

	def show
		@beer = Beer.find(params[:id])
	end


	private

	def beer_params
		params.require(:beer).permit(:beer_name, :beer_style, :beer_abv, :beer_ibu, :beer_description)
	end

end