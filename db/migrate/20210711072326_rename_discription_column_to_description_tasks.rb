class RenameDiscriptionColumnToDescriptionTasks < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :discription, :description
  end
end
