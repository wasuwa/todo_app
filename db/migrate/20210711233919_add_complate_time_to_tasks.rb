class AddComplateTimeToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :complate_time, :date
  end
end
