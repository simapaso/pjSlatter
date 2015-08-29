class UsersController < ApplicationController

  def home
    if user_signed_in?
  	  @user = current_user
    else
      redirect_to '/users/sign_in'
    end
  end
  
  def show

  end

end
