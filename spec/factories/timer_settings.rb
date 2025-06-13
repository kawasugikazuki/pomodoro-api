FactoryBot.define do
  factory :timer_setting do
    user { nil }
    work_time { 1 }
    short_break_time { 1 }
    long_break_time { 1 }
    session_unit_long_break { 1 }
    sound_file { "MyString" }
  end
end
