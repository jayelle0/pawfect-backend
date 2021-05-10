class RemoveCoordinateFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :coordinates, :geography
    add_column :users, :longitude, :float
    add_column :users, :latitude, :float
  end
end
