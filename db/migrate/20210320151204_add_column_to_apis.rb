class AddColumnToApis < ActiveRecord::Migration[6.1]
  def change
    add_column :apis, :logo_url, :string
  end
end
