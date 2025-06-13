class Session < ApplicationRecord
  belongs_to :user
  belongs_to :task, optional: true

  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :validate_time_order

  private

  def validate_time_order
    return if end_time.blank? || start_time.blank?

    if end_time <= start_time
      errors.add(:end_time, "end_time must be later than start_time")
    end
  end
end
