class UpdatesController < ApplicationController
  def create
    Update.create update_params
  end

  def update
    @update = Update.find params[:id]
    @update.update update_params
  end

  private

  def update_params
    params.require(:update).permit(:status, :change_date, :endpoint, :source)
  end
end
