class Plan < ApplicationRecord
  has_many :sites
  validates :name, presence: true
end
