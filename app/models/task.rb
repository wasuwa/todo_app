class Task < ApplicationRecord
  include ActiveModel::Validations

  with_options presence: true do
    validates :title, length: { maximum: 30 }
    validates :description, length: { maximum: 255 }
    validates :goal_at
  end
  validates_with GoalAtValidator
end
