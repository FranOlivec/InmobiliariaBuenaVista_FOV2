class Department < ApplicationRecord
  belongs_to :type
  belongs_to :building
  belongs_to :status
  belongs_to :modality
  has_one_attached :image
end
