class Site < ApplicationRecord

  validates :url, presence: true

  belongs_to :organisation
  belongs_to :plan
  has_many :notes, :dependent => :destroy
  has_many :tags

  accepts_nested_attributes_for :tags, :allow_destroy => :true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? }}

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
    where("url ILIKE ?", "%#{search}%")
  end

end
