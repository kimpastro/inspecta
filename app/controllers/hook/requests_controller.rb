class Hook::RequestsController < ApiController
  before_action :set_pool

  def create
    request_service = RequestService.new(request)      

    @request = @pool.requests.create!(
      ip: request_service.ip,
      size: request_service.size,
      body: request_service.body,
      headers: request_service.headers,
      form_params: request_service.form_params,
      http_method: request_service.http_method,
      query_string: request_service.query_string,
      content_type: request_service.content_type
    )

    head :ok
  end

  private

  def set_pool
    @pool = Pool.find_by_hashid!(params[:id])
  end
end
