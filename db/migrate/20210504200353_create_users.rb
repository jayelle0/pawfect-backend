class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthdate
      t.string :sex
      t.boolean :spade
      t.string :size
      t.string :breed
      t.belongs_to :owner, null: false, foreign_key: true
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
