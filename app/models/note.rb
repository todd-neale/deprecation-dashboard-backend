class Note < ApplicationRecord
  belongs_to :update_warning, foreign_key: "update_id", class_name: "Update"
  belongs_to :user
end
