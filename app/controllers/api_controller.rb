class ApiController < ApplicationController
  def index
    apis = Api.all
    updates = Update.all
    notes = Note.all
    users = User.all
    render json: { apis: apis, updates: updates, notes: notes, users: users }
  end
end
