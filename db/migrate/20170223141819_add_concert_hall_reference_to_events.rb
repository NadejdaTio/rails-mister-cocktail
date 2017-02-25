class AddConcertHallReferenceToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :concert_hall, foreign_key: true, index: true
  end
end
