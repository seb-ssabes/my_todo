class Project < ApplicationRecord
  has_many :sections

  validates :title, presence: true
  validates :description, optional: true
end
