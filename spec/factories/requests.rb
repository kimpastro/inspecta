FactoryBot.define do
  factory :request do
    pool
    verb         { Constants::SUPPORTED_VERBS.sample             }
    headers      { { "HTTP_CONTENT_TYPE" => "application/json" } }
    query_string { "name=kim"                                    }
    form_params  { { name: Faker::Name.name }                    }
    body         { Faker::Lorem.sentence(word_count: 10)         }
    host         { "154.221.23.211"                              }
  end
end
