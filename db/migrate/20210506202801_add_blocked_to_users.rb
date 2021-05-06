class AddBlockedToUsers < ActiveRecord::Migration[6.0]
  def change
   
    add_column :connections, :blocked, :boolean
    add_column :connections, :liked, :boolean
    add_column :connections, :matched, :boolean

  end
end
