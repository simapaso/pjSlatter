class TlsController < ApplicationController
  def new
    @user = current_user
    @tl = Tl.new
  end

  def create
    @tl = Tl.new
    @tl[:text] = params[:tl][:text]
    @tl[:user] = current_user[:username]
    render text: params[:tl][:text]
  end

  def show
  end

  def destroy
  end

  def update
  end

  def edit
  end
end
