class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :priority, default: 0
      t.string :name
      t.string :photo
      t.text :description
      t.timestamp :start_at
      t.timestamp :end_at

      t.timestamps
    end
  end
end
