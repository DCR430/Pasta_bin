class UsersController < ApplicationController
    skip_before_action :auth_user , only: [:new, :create]


    def show
        @user = User.find(params[:id])
        # @post = Post.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        # @user = User.find(params[:id])
        @user = User.create(user_params)
        if @user.valid?
            # byebug  #[["username", "Daniel"], ["id", 35], ["LIMIT", 1]] `create' true
            redirect_to new_post_path
          
        else
            # byebug
            flash[:errors]= @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    # @user = User.find(params[:id])
    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
