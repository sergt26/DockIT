class RemoveTitleFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :title, :string
  end
end
