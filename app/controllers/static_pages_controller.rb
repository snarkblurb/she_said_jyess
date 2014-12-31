class StaticPagesController < ApplicationController

	before_action :logged_in_user


  def home
  end
	
	def stories
	end

  def registry
  end

  def events
  end

  def rsvp
  end

  def people
  end


	private
		
		def logged_in_user
			unless logged_in?
				redirect_to login_url
			end
		end

end 
