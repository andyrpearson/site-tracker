class Organisation < ApplicationRecord
  has_many :sites
  validates :name, presence: true, length: { minimum: 2}
end
