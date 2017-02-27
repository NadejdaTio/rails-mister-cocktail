class Band < ApplicationRecord
  STYLES = ["Blues", "chanson française", "Disco", "Rock", "Funk", "Jazz Manouche", "Métal", "Musique Classique", "Salsa", "Techno", "World", "Folk", "Zouk", "Slam", "Soul", "Reggae", "Dub", "Hardrock", "Country", "Rap", "Rnb", "House", "Jazz", "Indie Rock", "Pop", "Hip Hop", "Dance"]

  has_many :events

  validates :name, presence: true
  validates :description, presence: true
  validates :style, inclusion: { in: STYLES, allow_nil: false }
  validates :rating, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }, numericality: { only_integer: true }
  validates :url, format: { with: /https?:\/\/[\S]+/ }

  has_attachment :photo
end
