class AddBandReferenceToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :band, foreign_key: true, index: true
  end
end
