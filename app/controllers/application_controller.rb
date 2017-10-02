class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def after_sign_in_path_for(resource_or_scope)
    professors_url

  end
def after_sign_out_path_for(resource_or_scope)
  new_user_session_path
  professors_url
  #root_path
end
end
