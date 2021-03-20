class CreateEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :emails do |t|
      t.string :from
      t.datetime :datetime
      t.string :subject
      t.text :text

      t.timestamps
    end
  end
end
