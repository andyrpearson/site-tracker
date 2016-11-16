class Site < ApplicationRecord
  belongs_to :organisation
  belongs_to :plan
  validates :name, presence: true

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
    where("url ILIKE ?", "%#{search}%")
  end

end
