# frozen_string_literal: true

class Authentication::User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]

  layout "authentication" 

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    super
  end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(
        :user_name,
        :email,
        :password,
        :accepted_terms_and_conditions
      )
    end
  end

  def after_sign_up_path_for(resource)
    root_path(resource)
  end
end
