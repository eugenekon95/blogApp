class PostsController < ApplicationController
  before_action :set_public_post, only: %i[show]
  before_action :set_author_post, only: %i[edit update destroy]
  
  def index
    @posts = Post.paginate(page: params[:page], per_page: 8)
    
  end


  def show
    # @comment_status = params[:comments_status].to_s.downcase
 
     #@comments = if @comment_status == 'unpublished'
                  # @post.comments.unpublished
                 #else
                   #@post.comments.published
                 #end
     @comments = @post.comments.all
     @post.update_columns(views_count: @post.views_count.to_i.succ)    
     @post.increment!(:views_count)
    
   end
 
  def new
    @post = Post.new
  end

  def edit; end

  def create
    @post = Post.new(post_params.merge(author_id: current_author.id))
    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  def search
    @posts = Post.where('title LIKE OR content LIKE ?', "%#{params[:q]}%", "%#{params[:q]}%")
    render :index
  end

  private

  def set_public_post
    @post = Post.find(params[:id])
  end

  def set_author_post
    @post = Post.where(author_id: current_author.id).find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name, :title, :content, :image)
  end
end
