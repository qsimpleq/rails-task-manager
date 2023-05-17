FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :avatar, :name, :description, :state] do |n|
    "string#{n}"
  end

  sequence(:expired_at) { (Date.today + 2.months).to_s }
  sequence(:email) { |n| "person_#{n}@example.com" }
  sequence(:integer, aliases: [:author_id, :assignee_id]) { _1 }
end
