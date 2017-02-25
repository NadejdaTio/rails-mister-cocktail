class AddEventReferenceToBands < ActiveRecord::Migration[5.0]
  def change
    add_reference :bands, :event, foreign_key: true, index: true
  end
end
