class AddUrlToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :url, :text
  end
end
