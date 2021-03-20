class UpdatesController < ApplicationController
  def update
    @update = Update.find params[:id]
    @update.update update_params
  end

  private

  def update_params
    params.require(:update).permit(:status, :deprecation_date, :endpoint, :source)
  end
end
