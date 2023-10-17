# frozen_string_literal: true

class Auth::PkregistrationsController < Devise::RegistrationsController
  include Devise::Passkeys::Controllers::RegistrationsControllerConcern
  include RelyingParty
  skip_before_action :require_functional!

    skip_around_action :set_locale
    skip_before_action :update_user_sign_in
end

