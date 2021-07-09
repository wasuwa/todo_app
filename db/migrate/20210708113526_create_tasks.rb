class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :discription
      t.string :title

      t.timestamps
    end
  end
end
