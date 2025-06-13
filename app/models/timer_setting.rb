class TimerSetting < ApplicationRecord
  belongs_to :user

  validates :work_time, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 120 }
  validates :short_break_time, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 30 }
  validates :long_break_time, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 60 }
  validates :session_unit_long_break, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 10 }
end
