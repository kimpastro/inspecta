class Api::PulsesController < Api::BaseController
  before_action :set_pool

  def create
    @pulse = @pool.pulses.create!(pulse_params)

    head :ok
  end

  private

  def set_pool
    @pool = Pool.find_by_hashid!(params[:id])
  end

  def pulse_params
    Pulses::RequestParams.new(request: request).call
  end
end
