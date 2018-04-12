class Enterprise < ApplicationRecord
  ## Relationships
  has_many :employees, class_name: 'Employee', foreign_key: 'enterprise_id'
end
