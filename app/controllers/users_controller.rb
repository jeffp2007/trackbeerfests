class UsersController < ApplicationController
	
	def index
	end

	def signup
		@user = User.new
	end

	  def create
	    User.create(quote_params)
	  end

	  private

	  def quote_params
	    params.require(:user).permit(:email)
	  end

end
