class PoolsController < ApplicationController
  before_action :set_pool

  def show
    @requests = @pool.requests.received
  end
  
  private
  def set_pool
    @pool = Pool.find_by_hashid!(params[:id])
  end
end
