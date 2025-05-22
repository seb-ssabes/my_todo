class Project < ApplicationRecord
  has_many :sections
  has_many :tasks, through: :sections

  validates :title, presence: true
end
