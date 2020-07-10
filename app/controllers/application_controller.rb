class ApplicationController < ActionController::Base
   before_action :auth_user
    
 
    def set_user

        @current_user = User.find_by(id: session[:user_id])
        # byebug
    end

    def auth_user

        # redirect_to posts_path unless set_user
        # byebug    #session.id "a92786af31e3b93b45e510b618a7bedd"
        redirect_to new_post_path unless set_user
          
    end

end

