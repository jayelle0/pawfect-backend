class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.date :birthdate
      t.string :gender


      t.timestamps
    end
  end
end
