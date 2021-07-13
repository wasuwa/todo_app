class RenameGoalAtColumnToTasks < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :goal_at, :goal_on
  end
end
