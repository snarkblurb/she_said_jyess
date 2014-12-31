class SessionsController < ApplicationController
	
	layout "application"

  def new
  end

	def create
		user = User.find_by(name: params[:session][:name])
		if user.authenticate(params[:session][:password])
			log_in user
			redirect_to root_path
		else
			flash.now[:danger] = "Try again please :)"
			render 'new'
		end

	end

	def destroy
	end 

end
