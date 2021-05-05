class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.belongs_to :connection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
