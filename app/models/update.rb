class Update < ApplicationRecord
  belongs_to :api
  has_many :notes
end
