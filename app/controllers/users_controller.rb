class UsersController < ApplicationController

	def index
		@users = User.all
		render :index
	end

	def new
		@user = User.new
		render :new
	end

	def create
		user_params = params.require(:user).permit(:name, :email, :password, :phone_number)
		@user = User.create(user_params)
		login(@user)
		redirect_to "/users/#{@user.id}"
	end

	def show
		@room = Room.new
		@user = User.find(params[:id])
		render :show
	end

end
