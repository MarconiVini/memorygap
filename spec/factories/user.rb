FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "mv #{n}" }
    sequence(:email) { |n| "mv#{n}@gmail.com" }
    sequence(:password) { "myownpass" }
    sequence(:password_confirmation) { "myownpass" }
  end  
end