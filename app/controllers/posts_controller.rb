class PostsController < ApplicationController
  def index
    @posts = Post.where(id: [0..3]).order(id: :DESC)
  end

  def new; end
end
