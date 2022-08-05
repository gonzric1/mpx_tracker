class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.text :name
      t.integer :available_vaccines
      t.text :phone
      t.text :city
      t.text :state
      t.text :street
      t.text :zip
      t.text :location_type
      t.text :appointment

      t.timestamps
    end
  end
end
