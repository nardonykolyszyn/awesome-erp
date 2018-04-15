class ProjectGallery < ApplicationRecord
  ## CarrierWave
  mount_uploader :image, ProjectGalleryUploader
  ## Relationships
  belongs_to :project
end
