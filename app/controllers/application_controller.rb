class ApplicationController < ActionController::Base
  helper_method :current_author
  helper_method :logged_in?

  private

  def current_author
    @current_author ||= Author.find(session[:author_id]) if session[:author_id]
  end
  

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_author.nil?
  end

  def logged_in?       
    !current_author.nil?  
  end
end
