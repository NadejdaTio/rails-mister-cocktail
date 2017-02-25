class CreateConcertHalls < ActiveRecord::Migration[5.0]
  def change
    create_table :concert_halls do |t|
      t.string :name
      t.string :address
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
