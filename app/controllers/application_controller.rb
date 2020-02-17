class ApplicationController < ActionController::Base
    helper_method :current_user
    def current_user
        if session[:user_email]
            @current_user ||= User.find_by_email(session[:user_email])
          else
            @current_user = nil
          end
    end
end
