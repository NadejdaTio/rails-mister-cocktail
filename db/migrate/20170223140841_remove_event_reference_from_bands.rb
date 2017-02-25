class RemoveEventReferenceFromBands < ActiveRecord::Migration[5.0]
  def change
    remove_reference :bands, :event
  end
end
