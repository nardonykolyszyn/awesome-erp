class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.integer :payment_type, default: 0
      t.boolean :expired, default: false
      t.string :amount

      t.timestamps
    end
  end
end
