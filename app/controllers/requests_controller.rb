class RequestsController < ApplicationController
  before_action :set_request

  def show; end

  def destroy
    @pool = @request.pool
    @deleted_request = @request.destroy
    
    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def set_request
    @request = Request.find_by_hashid!(params[:id])
  end
end
