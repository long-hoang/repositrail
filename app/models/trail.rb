class Trail < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :name, presence: true
  validates :duration, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode

  validates :name, length: {minimum: 2}

end
