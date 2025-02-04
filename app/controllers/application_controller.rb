class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :current_user=, :logged_in?

  def current_user
    session[:name]
  end

  def current_user=(name)
    session[:name] = name
  end

  def logged_in?
    !(!current_user || current_user.empty?)
  end
end
