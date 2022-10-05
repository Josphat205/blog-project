class PostsController < ApplicationController
  before_action :find_user_id, except: [:new]
  def index
    @posts = @user.posts.all
  end

  def new; end

  def create
    @post = @user.posts.create(post_params)
    if @post.save
      redirect_to user_posts_path(@user)
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def find_user_id
    @user = User.find(params[:user_id])
  end

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
