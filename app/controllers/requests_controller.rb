class RequestsController < ApiController
  def create
    puts "HTTP: #{request.env.select {|k,v| k =~ /^HTTP_/}}"
    puts "QUERY_STRING: #{request.headers["QUERY_STRING"]}"
    puts "REQUEST_METHOD: #{request.headers["REQUEST_METHOD"]}"
    puts "request.content_type: #{request.content_type}"
    puts "BODY: #{request.body.read}"

    render html: "", status: :ok
  end
end
