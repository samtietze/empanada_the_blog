class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/entries'
    else
      @errors = ["Incorrect username or password"]
      render 'sessions/new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to entries_path
  end

end