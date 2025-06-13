class User < ApplicationRecord
  has_secure_password

  has_one :timer_setting, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :sessions, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  after_create :create_default_timer_setting

  private

  def create_default_timer_setting
    TimerSetting.create!(
      user: self,
      work_time: 25,
      short_break_time: 5,
      long_break_time: 20,
      session_unit_long_break: 4
    )
  end
end
