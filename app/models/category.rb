class Category < ApplicationRecord
  ## PgSearch
  include PgSearch
  pg_search_scope :search_by_full_name, against: [:name],
    using: {
      tsearch: {
        prefix: true,
        negation: true,
        highlight: {
          start_sel: '<b>',
          stop_sel: '</b>'
        }
      }
    }
  ## Relationships
  has_and_belongs_to_many :articles
end
