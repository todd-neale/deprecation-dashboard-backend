class CreateApis < ActiveRecord::Migration[6.1]
  def change
    create_table :apis do |t|
      t.string :status
      t.string :tray_version
      t.string :latest_version

      t.timestamps
    end
  end
end
