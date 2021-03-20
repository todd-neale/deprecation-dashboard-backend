class AddColumnsToApis < ActiveRecord::Migration[6.1]
  def change
    add_column :apis, :name, :string
    add_column :apis, :developer, :string
    add_column :apis, :description, :text
    add_column :apis, :api_acc_manager, :string
  end
end
