class Note < ApplicationRecord
  belongs_to :update
  belongs_to :user
end
