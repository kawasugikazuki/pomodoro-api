class Task < ApplicationRecord
  belongs_to :user
  has_many :sessions, dependent: :destroy

  validates :title, presence: true, length: { minimum: 1, maximum: 100 }
  validates :description, length: { maximum: 500 }
end
