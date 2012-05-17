class ApplicationController < ActionController::Base
  protect_from_forgery
  respond_to :html, :json
  
  def after_sign_in_path_for(resource)
    users_root_path
  end
end
