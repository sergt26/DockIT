class AddLatitudToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :latitud, :float
  end
end
