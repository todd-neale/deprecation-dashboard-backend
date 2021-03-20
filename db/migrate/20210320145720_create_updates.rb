class CreateUpdates < ActiveRecord::Migration[6.1]
  def change
    create_table :updates do |t|
      t.references :api, null: false, foreign_key: true
      t.string :status
      t.date :change_date
      t.string :endpoint
      t.text :text
      t.string :source

      t.timestamps
    end
  end
end
