class RenameComplateTimeColumnToTasks < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :complate_time, :goal_time
  end
end
