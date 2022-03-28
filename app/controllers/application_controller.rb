class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning

  def after_sign_in_path_for(resource)
    root_path
  end
end
