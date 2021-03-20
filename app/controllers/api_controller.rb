class ApiController < ApplicationController
  def index
    apis = Api.all
    updates = Update.all
    notes = Note.all
    render json: { apis: apis, updates: updates, notes: notes }
  end
end
