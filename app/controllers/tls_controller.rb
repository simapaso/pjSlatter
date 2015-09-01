class TlsController < ApplicationController
  
  def index
    if user_signed_in?
      @tl = Tl.all
      @user = current_user
    else
      redirect_to 'users/home' 
    end
  end

  def new
    @user = current_user
    @tl = Tl.new
  end

  def create
    @tl = Tl.new
    @tl[:text] = params[:tl][:text]
    @tl[:user_id] = current_user[:id]
    if @tl.save
      redirect_to root_path
    else
      redirect_to new_tl_path
    end
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

=begin
end
<!--<header>
        <nav>
            <% if user_signed_in? %>
                <strong<%= link_to current_user.username, controller: 'users', action: 'show'  %></strong>
                <%= link_to 'プロフィール変更', edit_user_registration_path %>
                <%= link_to 'ログアウト', destroy_user_session_path, method: :delete %>
            <% else %>
                <%= link_to 'サインアップ', new_user_registration_path %>
                <%= link_to 'ログイン', new_user_session_path %>
            <% end %>
        </nav>
</header>
-->

=end