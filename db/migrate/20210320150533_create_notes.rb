class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.references :update, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
