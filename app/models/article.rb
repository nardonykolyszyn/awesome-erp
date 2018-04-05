class Article < ApplicationRecord
  self.per_page = 10
  ## Relationships
  has_many :sale_article
  has_many :sales, through: :sale_article
end
