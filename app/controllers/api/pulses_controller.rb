class Api::PulsesController < Api::BaseController
  before_action :check_allowed_methods
  before_action :set_pool

  def create
    @pool.pulses.create!(pulse_params)
    head :ok
  end

  private

  def set_pool
    @pool = Pool.find_by_hashid!(params[:id])
  end

  def pulse_params
    Pulses::RequestParams.new(request: request).call
  end

  def check_allowed_methods
    unless allowed_methods.include?(request.method_symbol)
      head :method_not_allowed
    end
  end

  def allowed_methods
    Constants::HTTP_METHODS
  end
end
