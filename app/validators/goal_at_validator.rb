class GoalAtValidator < ActiveModel::Validator
  def validate(record)
    if record.goal_at < Time.current
      record.errors[:goal_at] << "に過去の日時は指定できません"
    end
  end
end
