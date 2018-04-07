class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :price
      t.integer :quantity, default: 0, null: false
      t.boolean :available, default: true
      t.timestamps
    end
  end
end
