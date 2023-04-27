class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, if: :devise_controller?

  def after_sign_up_path_for(resource)
    exercises_path(resource)
  end

  private
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:patient_id, :birth_date])
  end
  
end
