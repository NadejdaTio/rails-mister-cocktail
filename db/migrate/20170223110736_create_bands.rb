class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :style
      t.text :description
      t.integer :rating
      t.string :url

      t.timestamps
    end
  end
end
