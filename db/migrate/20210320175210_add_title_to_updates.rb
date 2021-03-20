class AddTitleToUpdates < ActiveRecord::Migration[6.1]
  def change
    add_column :updates, :title, :string
  end
end
