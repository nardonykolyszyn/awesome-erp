class Enterprise < ApplicationRecord
  ## CarrierWave
  mount_uploader :photo, EnterprisePictureUploader
  ## Relationships
  has_many :employees, class_name: 'Employee', foreign_key: 'enterprise_id'
end
