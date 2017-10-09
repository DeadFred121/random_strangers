class PagesController < ApplicationController

  def index
    @post = Post.new
  end

  def save
    @post = Post.new
    @post.description = params[:message]
    @post.save

    if @post.save
      redirect_to root_path
    end
  end

end
