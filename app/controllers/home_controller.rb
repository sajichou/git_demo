class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		redirect_to '/cours/index'
  	elsif teacher_signed_in?
  		redirect_to '/cours/index'
  	else
  		redirect_to new_user_session_path
  		
  	end

  end
end
