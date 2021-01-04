class ApplicationController < ActionController::Base
  helper_method :current_author
  helper_method :logged_in?
  before_action :count_visit

  private

  def current_author
    Author.find_by(id: session[:author_id])
  end
  
  def authorize
    redirect_to login_path, alert: "Not authorized" if current_author.nil?
  end

  def count_visit
    if current_author.nil?
      if cookies[:views_count].present?
        cookies[:views_count] = cookies[:views_count].to_i + 1
      else
        cookies[:views_count] = 1
      end
    else
      cookies[:views_count] = 0
    end
  end

  def logged_in?
    !current_author.nil?
  end
end
