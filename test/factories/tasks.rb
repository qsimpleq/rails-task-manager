FactoryBot.define do
  factory :task do |t|
    name
    description
    author factory: :manager
    assignee factory: :developer
    expired_at
  end
end
