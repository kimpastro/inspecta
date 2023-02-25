class Request::HooksController < ApiController
  before_action :set_pool

  def create
    request_service = RequestService.new(request)      

    @pool.requests.create!(
      http_method: request_service.http_method,
      headers: request_service.headers,
      query_string: request_service.query_string,
      content_type: request_service.content_type,
      size: request_service.size,
      form_params: request_service.form_params,
      body: request_service.body,
      ip: request_service.ip
    )

    head :ok
  end

  private

  def set_pool
    @pool = Pool.find(params[:id])
  end
end
