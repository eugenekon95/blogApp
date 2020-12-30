class AuthorsController < ApplicationController
  def new
    cookies[:views] = 3
    @author = Author.new
  end


  def create
    @author = Author.new(author_params)
    if @author.save
      session[:author_id] = @author.id
      redirect_to home_path notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def profile
    @author = current_author
  end

  def save_profile
    @author = current_author
    @author.update(author_params)
    redirect_to profile_authors_path
  end

  def author_params
    params.require(:author).permit(:first_name, :last_name, :email, :password, :gender, :birthday,:avatar)
  end
end
