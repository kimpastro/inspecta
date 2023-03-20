class PulsesController < ApplicationController
  before_action :set_pulse
  def show; end

  def destroy
    @pulse.destroy
    
    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def set_pulse
    @pulse = Pulse.find_by_hashid!(params[:id])
    @pool = @pulse.pool
  end
end
