class BlogsController < ApplicationController
    before_action :set_blog, only: [:show, :edit, :update, :destroy] 
    before_action :authenticate_user!
    # access all: [:show, :index], if current_user.id == blog.user_id [:destroy, :new, :create, :update, :edit, :show]}, admin: :all
  def index
    @blogs = Blog.page(params[:page]).per(10)
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def edit

  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id 

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
    end
  end

  private 
    def set_blog
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :body)
    end

end