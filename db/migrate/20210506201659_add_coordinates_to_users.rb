class AddCoordinatesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :coordinates, :st_point, null: false, geographic: true

  end
end
