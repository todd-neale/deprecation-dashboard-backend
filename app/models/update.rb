class Update < ApplicationRecord
  belongs_to :api
  has_many :notes
  after_update :update_api_status
  after_create :update_api_status

  def self.create_from_email(email)
    Update.create(title: email.subject, status: 'pending', source: email.from, text: email.text)
  end

  private

  def update_api_status
    if api.updates.map(&:status).include?("urgent")
      api.update(status: 'urgent')
    elsif api.updates.map(&:status).include?("pending")
      api.update(status: 'pending')
    else
      api.update(status: 'clear')
    end
  end
end
