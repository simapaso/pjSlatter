class UsersController < ApplicationController

  def home
  	@user = current_user
  end
  
  def show

  end

end
