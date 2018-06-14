FactoryBot.define do
  factory :user do
    username "MyString"
    password_digest "MyString"
    email "MyString"
    dm false
    roles "MyString"
    reviews_count 1
  end
end
