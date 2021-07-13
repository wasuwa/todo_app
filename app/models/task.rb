class Task < ApplicationRecord
  with_options presence: true do
    validates :title, length: { maximum: 30 }
    validates :description, length: { maximum: 255 }
    validates :goal_at
  end
  validate :not_past_dates

  private

    def not_past_dates
      errors.add(:goal_at, "過去の日時は指定できません") if goal_at < Time.current
    end
end
