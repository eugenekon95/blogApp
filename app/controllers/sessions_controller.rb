class SessionsController < ApplicationController
  def new
    cookies[:views_count] = 0
  end

  def create
    author = Author.find_by_email(params[:email])
    if author && author.authenticate(params[:password])
      session[:author_id] = author.id
      redirect_to home_path, notice: 'Logged in!'
    else
      flash.now.alert = 'Email or password is invalid'
      render 'new'
    end
  end

  def destroy
    session[:author_id] = nil
    redirect_to home_path, notice: 'Logged out!'
  end
end
