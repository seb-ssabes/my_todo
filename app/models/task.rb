class Task < ApplicationRecord
  belongs_to :project, optional: true
  belongs_to :section, optional: true

  validates :title, presence: true
  validates :status, inclusion: { in: ["pending", "done"] }
  validates :description, optional: true
end
