class ApplicationController < ActionController::Base
  protect_from_forgery
  
protected
   
  def admin?
    user_signed_in? && current_user.admin
  end
  
  def authorize
    unless admin?
      flash[:error] = "Unauthorized access"
      redirect_to "/"
      false
    end
  end
  
  helper_method :admin?
end
