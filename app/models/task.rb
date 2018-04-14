class Task < ApplicationRecord
  ## Enum method
  enum priority: [:low, :medium, :high]
  ## Validations
  validates_presence_of :start_at, :end_at
end
