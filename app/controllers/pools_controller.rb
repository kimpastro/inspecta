class PoolsController < ApplicationController
  before_action :set_pool

  def show
    @pulses = @pool.pulses.received
  end
  
  private

  def set_pool
    @pool = Pool.find_by_hashid!(params[:id])
  rescue ActiveRecord::RecordNotFound
    cookies.delete(:_session_pool_id)
    redirect_to root_path
  end
end
