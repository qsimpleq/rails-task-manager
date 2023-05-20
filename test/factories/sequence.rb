FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :avatar, :name, :description] do |n|
    "string#{n}"
  end

  sequence(:expired_at) { (Date.today + 2.months).to_s }
  sequence(:email) { |n| "person_#{n}@example.com" }
end
