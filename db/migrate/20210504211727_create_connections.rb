class CreateConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :connections do |t|

          t.integer 'liked_id', :null => false
          t.integer 'liker_id', :null => false
    
          t.timestamps null: false
        end
    
        add_index :connections, :liked_id
        add_index :connections, :liker_id
        add_index :connections, [:liked_id, :liker_id], unique: true
      

    
  end
end
