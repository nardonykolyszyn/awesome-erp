class CreateArticleCategories < ActiveRecord::Migration[5.1]
  def change
    create_join_table :categories, :articles do |t|
      t.index [:category_id, :article_id]
    end
  end
end
