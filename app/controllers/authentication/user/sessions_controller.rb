# frozen_string_literal: true

class Authentication::User::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]
  
  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:user_name, :password)
    end
  end

  def after_sign_in_path_for(resource)
    root_path
   end

  def after_sign_out_path_for(resource)
    root_path
  end
end
