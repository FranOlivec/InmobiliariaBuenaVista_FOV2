class Building < ApplicationRecord
  belongs_to :commune
  has_and_belongs_to_many :services
end
