class RemoveLikedFromConnections < ActiveRecord::Migration[6.0]
  def change
    remove_column :connections, :liked, :boolean
    add_column :connections, :initiated, :boolean

  end
end
