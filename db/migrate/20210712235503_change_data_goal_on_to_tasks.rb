class ChangeDataGoalOnToTasks < ActiveRecord::Migration[6.1]
  def change
    change_column :tasks, :goal_on, :datetime
  end
end
