class RequestService
  HTTP_METHODS = %w[GET POST PUT PATCH DELETE OPTIONS]
  NOT_ALLOWED_HEADERS = %w[HTTP_UPGRADE_INSECURE_REQUESTS HTTP_COOKIE]

  def initialize(request)
    @request = request
  end

  def headers
    # needs improvment
    @request.env.select {|k,v| k =~ /^HTTP_/}.except(NOT_ALLOWED_HEADERS)
  end

  def http_method
    @request.headers["REQUEST_METHOD"]
  end

  def query_string
    @request.env["rack.request.query_hash"]
  end

  def content_type
    @request.content_type
  end

  def body
    @request.body.read
  end

  def ip
    @request.ip
  end

  def size
    @request.env["CONTENT_LENGTH"]
  end

  def form_params
    @request.env["rack.request.form_hash"]
  end
end
