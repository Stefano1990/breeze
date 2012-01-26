class Admin::PostsController < ApplicationController
  respond_to :html

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to root_path
    else
      render :edit
    end
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
       redirect_to root_path
    else
      render :new
    end
  end
end
