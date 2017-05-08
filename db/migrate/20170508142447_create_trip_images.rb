class CreateTripImages < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_images do |t|
      t.references :trip, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
