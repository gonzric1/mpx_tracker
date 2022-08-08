class DropAvailableVaccines < ActiveRecord::Migration[7.0]
  def change
    remove_column :locations, :available_vaccines
  end
end
