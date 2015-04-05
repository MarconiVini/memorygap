class ApiController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :check_keys

  #check if key is supplied and check if it belongs to the current_user
  def check_keys
    binding.pry
  end
end