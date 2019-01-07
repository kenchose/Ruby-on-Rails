FactoryBot.define do
  factory :message do
    message {"This is a message that is owned by Kenchose"}
    user { nil }
  end
end
