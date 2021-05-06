class RemoveLocationFromUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.remove_references :location
    end
  end
end
