class CreateProjectGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :project_galleries do |t|
      t.string :image
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
