FactoryBot.define do
  factory :pulse do
    pool
    http_method { "GET" }
    headers { {} }
    query_string { "MyString" }
    content_type { "MyString" }
    size { 1 }
    form_params { {} }
    body { "MyText" }
    ip { Faker::Internet.ip_v4_address }
  end
end
