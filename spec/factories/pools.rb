FactoryBot.define do
  factory :pool do
    quantity   { rand(1..100) }
  end
end
