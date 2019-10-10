class ApplicationController < ActionController::API
  include JWTSessions::RailsAuthorzation
  rescue_from JWTSessions::Errors::Unauthorized, with :not_authorized


  private

    def not_authorized
      render json: { error: 'Not not_authorized' }, status: :unauthorized
    end
end
