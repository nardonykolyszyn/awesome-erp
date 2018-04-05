class CreateSaleArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :sale_articles do |t|
      t.belongs_to :sale, foreign_key: { on_delete: :cascade }
      t.belongs_to :article, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
