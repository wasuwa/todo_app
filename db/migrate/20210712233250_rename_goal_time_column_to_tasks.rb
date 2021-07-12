class RenameGoalTimeColumnToTasks < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :goal_time, :goal_at
  end
end
