class ApplicationController < ActionController::Base
  respond_to :html, :json
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[first_name last_name user_type_id family_id phone_number
                                               dietary_restrictions headshot walkup_song adventure_score nightlife_score beachwater_score freetime_score])

    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[first_name last_name user_type_id family_id phone_number
                                               dietary_restrictions headshot walkup_song adventure_score nightlife_score beachwater_score freetime_score])
  end
end
