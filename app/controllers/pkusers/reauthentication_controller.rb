# frozen_string_literal: true

class Pkusers::ReauthenticationController < DeviseController
  layout 'pkusers'
  include Devise::Passkeys::Controllers::ReauthenticationControllerConcern
  include RelyingParty

#  skip_before_action :require_authenticated_user!
#  skip_before_action :require_not_suspended!
  skip_before_action :require_functional!

    skip_around_action :set_locale
    skip_before_action :update_user_sign_in
  def set_relying_party_in_request_env
    request.env[relying_party_key] = relying_party
  end

  private
  def require_authenticated_user!
    render json: { error: 'This method requires an authenticated user' }, status: 401 unless current_user
  end
end
