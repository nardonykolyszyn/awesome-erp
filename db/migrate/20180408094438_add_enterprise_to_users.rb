class AddEnterpriseToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :enterprise, foreign_key: { on_delete: :cascade }
  end
end
