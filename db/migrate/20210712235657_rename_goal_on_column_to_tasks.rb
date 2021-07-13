class RenameGoalOnColumnToTasks < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :goal_on, :goal_at
  end
end
