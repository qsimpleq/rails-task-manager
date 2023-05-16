FactoryBot.define do
  factory :user do
    first_name
    last_name
    password
    email
    avatar { "MyString" }
    type { "" }

    factory :admin do
      type { "Admin" }
    end
  end
end