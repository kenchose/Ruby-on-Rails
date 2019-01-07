FactoryBot.define do
  factory :comment do
    comment {"This comment referrs to a message"}
    user  { nil }
  end
end
