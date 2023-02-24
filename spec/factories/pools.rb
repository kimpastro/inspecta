FactoryBot.define do
  factory :pool do
    identifier { SecureRandom.alphanumeric(32) }
    quantity   { rand(1..100)                  }
  end
end
