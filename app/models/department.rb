class Department < ApplicationRecord
  belongs_to :type
  belongs_to :building
  belongs_to :status
  belongs_to :modality
end
