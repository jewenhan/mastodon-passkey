class RootController < ApplicationController
  
    skip_before_action :require_functional!

    skip_around_action :set_locale
    skip_before_action :update_user_sign_in
 #   before_action :authenticate_pkuser!
    def index
    end
  end
  
