FactoryBot.define do
  factory :company do
    email { Faker::Internet.unique.email }
    username { Faker::Internet.unique.username(specifier: 3..50) }
    password { '12345678' }
    password_confirmation { '12345678' }
  end
end
