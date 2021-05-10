class RemoveSexFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :sex, :string
    add_column :users, :gender, :string
  end
end
