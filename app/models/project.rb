class Project < ApplicationRecord
  has_many :galleries, class_name: 'ProjectGallery'
  accepts_nested_attributes_for :galleries, reject_if: :all_blank, allow_destroy: true
end
