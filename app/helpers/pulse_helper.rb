module PulseHelper
  HTTP_TAG_COLORS = {
    "GET" => "text-bg-success",
    "POST" => "text-bg-primary",
    "PUT" => "text-bg-warning",
    "PATCH" => "text-bg-secondary",
    "DELETE" => "text-bg-danger",
    "OPTIONS" => "text-bg-info"
  }.freeze

  def http_tag(http_method)
    HTTP_TAG_COLORS[http_method]
  end
end
