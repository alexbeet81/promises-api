class Api::V1::BaseController < ActionController::Base
    include Pundit

    after_action :verify_authorized, except: :index
    after_action :verify_policy_scoped, only: :index

    rescue_from StandardError,                  with: :interal_server_error
    rescue_from Pundit::NotAuthorizedError,     with: :user_not_authorized
    rescue_from ActiveRecord::RecordNotFound,   with: :not_found

    private

    def user_not_authorized(exception)
        render json: {
            error: "Unauthorized #{exception.policy.to_s.underscore.camelize}.#{exception.query}"
        }, status: :unauthorized
    end

    def not_found(exception)
        render json: { error: exception.message }, status: :not_found
    end
end