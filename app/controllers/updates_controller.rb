class UpdatesController < ApplicationController
  def create
    Update.create create_params
  end

  def update
    @update = Update.find params[:id]
    @update.update update_params
  end

  private

  def create_params
    params.require(:update).permit(:text, :title, :api_id)
  end

  def update_params
    params.require(:update).permit(:status, :change_date, :endpoint, :source, :text, :title)
  end
end
