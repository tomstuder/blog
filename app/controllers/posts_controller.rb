class PostsController < ApplicationController

def new
end

def create
  @post = Post.new(post_params)
  @post.save
  redirect_to @post
end

def show
  @post = Post.find(params[:id])
end

def index
  @post = Post.all
end


private
  def post_params
    params.require(:post).permit(:title, :text)
end

end
