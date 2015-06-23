class UsersController < ApplicationController
	
	def index
	end

	def signup
		@user = User.new
	end

	def create
	    @user = User.create(user_params)
	    if @user.invalid?
	      flash[:error] = '<strong>Email address invalid.</strong>'
	      redirect_to signup_path
	    else
	      flash[:success] = '<strong>You have signed up for priority access.</strong>'
	      redirect_to success_path
	    end
	end

	def thanks
	end

	def success
	end


	private

	def user_params
		params.require(:user).permit(:email)
	end

end
