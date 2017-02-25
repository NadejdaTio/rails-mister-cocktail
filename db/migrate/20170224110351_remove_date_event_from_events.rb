class RemoveDateEventFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :date_event
  end
end
