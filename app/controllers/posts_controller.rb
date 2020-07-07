class PostsController < ApplicationController

    def index 
        @posts = Post.all
  
    end

    def show
        @post = Post.find(params[:id])
        @user = User.find(params[:id])
    end

    def new
        @post = Post.new

    end

    def create 
        @post = Post.create(post_params)
        redirect_to posts_path
    end




private

    def post_params
        params.require(:post).permit(:post_title, :post_body, :post_description, :user_id)
    end


end

