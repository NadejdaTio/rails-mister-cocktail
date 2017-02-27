class ConcertHall < ApplicationRecord
  has_many :events

  validates :name, presence: true
  validates :address, presence: true

  has_attachment :photo
end
