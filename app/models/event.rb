class Event < ApplicationRecord
  belongs_to :band
  belongs_to :concert_hall

  validates :date, presence: true
  validates :price, numericality: { only_integer: true }
end
