class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    #implicitly renders the views/posts/new.html.erb
  end

  def create
    Post.create(title:  params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
    #aka redirect_to "/posts"
    #aka pseudocode: get "/posts"
  end


end
