class Site < ApplicationRecord
  validates :name, presence: true

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
    where("url ILIKE ?", "%#{search}%")
  end
end
