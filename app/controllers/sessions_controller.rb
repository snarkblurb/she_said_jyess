class SessionsController < ApplicationController
	
	layout "sessions"

  def new
  end

	def create
		user = User.find_by(name: params[:session][:name])
		if user.authenticate(params[:session][:password])
			redirect_to root_path
		else
			flash.now[:danger] = "Try again please :)"
			render 'new'
		end

	end

	def destroy
	end 

end
