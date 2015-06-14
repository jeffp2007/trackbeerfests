class UsersController < ApplicationController
	
	def index
	end

	def signup
		@user = User.new
	end

	def create
		User.create(user_params)
		redirect_to success_path
	end

	def success
	end


	private

	def user_params
		params.require(:user).permit(:email)
	end

end
