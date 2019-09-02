class Trail < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :duration, presence: true
  validates :address, presence: true

  validates :name, length: {minimum: 2}

end
