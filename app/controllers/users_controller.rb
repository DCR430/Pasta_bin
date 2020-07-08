class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        # @user = User.find(params[:id])
        @user = User.create(user_params)
        redirect_to new_post_path
    end

    # @user = User.find(params[:id])
    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
