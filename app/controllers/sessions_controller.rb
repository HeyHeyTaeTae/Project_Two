class SessionsController < ApplicationController
	def new
		@user = User.new
	end

	def create
		# signin
		user_params = params.require(:user).permit(:email, :password)
		@user = User.confirm(user_params)
		if @user 
			login(@user)
			redirect_to "/users/#{@user.id}"
		else 
			redirect_to "/sign_in"
		end
    end

    def destroy
    	logout
    	redirect_to "/"
    end
end
