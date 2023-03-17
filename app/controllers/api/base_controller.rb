class Api::BaseController < ActionController::Base
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private

  def not_found(e)
    head :not_found
  end
end
