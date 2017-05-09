class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :logged_in?, :current_user
  helper_method :current_user

  private

  def authorize_user
    unless logged_in?
      flash[:notice] = "You must be logged in to do that"
      redirect_to login_path
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    session[:user_id].present?
  end
end
