FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "mv #{n}" }
    sequence(:email) { |n| "mv#{n}@gmail.com" }
    sequence(:password) { "myownpass" }
    sequence(:password_confirmation) { "myownpass" }
    api_token { SecureRandom.hex(16).to_i(16).to_s(36) }
  end
end