class SaleArticle < ApplicationRecord
  belongs_to :sale, dependent: :destroy
  belongs_to :article, dependent: :destroy
end
