FactoryBot.define do
  factory :pulse do
    pool
    http_method  { RequestService::HTTP_METHODS.sample   }
    headers      { { "HTTP_CONNECTION" => "keep-alive" } }
    query_string { "name=kim"                            }
    size         { 103                                   }
    content_type { "application/json"                    }
    form_params  { { name: Faker::Name.name }            }
    body         { Faker::Lorem.sentence(word_count: 10) }
    ip           { Faker::Internet.ip_v4_address         }
  end
end
