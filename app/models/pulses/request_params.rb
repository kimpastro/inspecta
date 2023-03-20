module Pulses
  class RequestParams
    NOT_ALLOWED_HEADERS = %w[HTTP_UPGRADE_INSECURE_REQUESTS HTTP_COOKIE]

    def initialize(request:)
      @request = request
    end

    def call
      {
        headers: headers,
        http_method: http_method,
        query_string: query_string,
        content_type: content_type,
        body: body,
        ip: ip,
        size: size,
        form_params: form_params
      }
    end

    private

    def headers
      @request.env.select {|k,v| k =~ /^HTTP_/}.delete_if { |k,_| NOT_ALLOWED_HEADERS.include?(k) }
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
      @request.env["CONTENT_LENGTH"].to_i
    end
  
    def form_params
      @request.env["rack.request.form_hash"]
    end
  end
end
