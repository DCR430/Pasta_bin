class ApplicationController < ActionController::Base
   before_action :auth_user
    
 
    def set_user

        @current_user = User.find_by(id: session[:user_id])
        # byebug
    end

    def auth_user

        # redirect_to posts_path unless set_user
        redirect_to new_user_path unless set_user
    
    end

end
