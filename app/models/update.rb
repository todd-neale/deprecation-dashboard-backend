class Update < ApplicationRecord
  belongs_to :api
  has_many :notes

  def self.create_from_email(email)
    self.create(title: email.subject, status: 'pending', source: email.from, text: email.text)
  end
end
