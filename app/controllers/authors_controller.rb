class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end
  
  def create
    @author = Author.new(author_params)
    if @author.save
      session[:author_id] = @author.id
      redirect_to home_path, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
  
    def author_params
      params.require(:author).permit(:first_name, :last_name, :email, :password, :gender, :birthday)
    end
  
  end

