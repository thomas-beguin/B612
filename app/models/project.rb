class Project < ApplicationRecord
  has_many :tags
  validates :title,       presence: true
  validates :description, presence: true
end
