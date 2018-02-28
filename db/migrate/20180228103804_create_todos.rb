class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.text :text
      t.integer :priority
      t.datetime :start_date
      t.datetime :deadline_date
      t.boolean :completed

      t.timestamps
    end
  end
end
