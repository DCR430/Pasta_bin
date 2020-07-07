class PostsController < ApplicationController

    def index 
        @posts = Post.all

        # @users = User.all
  
    end

    def show
        @post = Post.find(params[:id])
        # Add back in after user can login
        # @user = User.find(params[:id])
    end

    def new
        @post = Post.new
        @posts = Post.all

    end

    def create 
        @post = Post.create(post_params)
        redirect_to posts_path
    end

    # def create_comment
    #     @post = Post.find(params[:id])
    #     @comment = Comment.create(comment_params)
    #     redirect_to post_path(@post)
    # end

    def edit
         @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to post_path(@post.id)
    end


  def destroy
    # we are going to find our post
    @post = Post.find(params[:id])
    @post.destroy
    # this post no longer exists so for us it makes the most sense to send the user back to the index page.
    redirect_to posts_path
  end





private

    def post_params
        params.require(:post).permit(:post_title, :post_body, :post_description, :user_id)
    end

    # def comment_params
    #     params.require(:comment).permit(:comment_body, :user_id, :post_id)
    # end


end

