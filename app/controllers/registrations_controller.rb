class RegistrationsController < ApplicationController
  before_action :configure_sign_up_params, only: [:create]

  def create
    build_resource(sign_up_params)
    resource.save
    if resource.persisted?
      sign_up(resource_name, resource)
      render json: resource
    else
      render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
    end
  end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation])
  end
end
