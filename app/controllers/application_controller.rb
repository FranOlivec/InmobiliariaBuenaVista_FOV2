class ApplicationController < ActionController::Base
    def authenticate_admin!
        authenticate_user!
    
        unless current_user.admin? || current_user.vendedor?
          flash[:alert] = "No estás autorizado para acceder a esta página"
          redirect_to root_path
        end
    end
end
