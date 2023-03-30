class PulsesController < ApplicationController
  before_action :set_pulse

  def show
    render PulseDetailComponent.new(pulse: @pulse)
  end

  def destroy
    @pool = @pulse.pool
    @pulse.destroy

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def set_pulse
    @pulse = Pulse.find_by_hashid!(params[:id])
  end
end
