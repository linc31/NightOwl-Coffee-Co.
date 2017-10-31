class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  helper_method :current_user
  helper_method :active_order


  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  def authorize
    redirect_to login_path, alert: 'Log in, dude!' if current_user.nil?
  end
  
  def active_order
    @active_order = current_user.orders.find_by(is_active: true)
  end
      
end
