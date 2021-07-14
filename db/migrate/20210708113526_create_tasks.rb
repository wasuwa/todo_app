class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :discription, null: false
      t.string :title, null: false

      t.timestamps
    end
  end
end
