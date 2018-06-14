FactoryBot.define do
  factory :review do
    book nil
    user nil
    status 1
    body "MyText"
  end
end
