FactoryBot.define do
  factory :session do
    user { nil }
    task { nil }
    note { "MyText" }
    start_time { "2025-06-12 15:38:31" }
    end_time { "2025-06-12 15:38:31" }
  end
end
