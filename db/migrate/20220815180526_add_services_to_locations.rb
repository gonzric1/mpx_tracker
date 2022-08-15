class AddServicesToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :testing, :boolean
    add_column :locations, :vaccines, :boolean
  end
end
