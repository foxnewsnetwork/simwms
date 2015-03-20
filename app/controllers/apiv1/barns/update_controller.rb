class Apiv1::Barns::UpdateController < ApplicationController
  def update
    _barn.update _update_params
    render json: { barn: _barn }
  end
  private
  def _barn
    @barn ||= Apiv1::Dock.find params[:id]    
  end
  def _update_params
    params.require(:barn).permit(:status)
  end
end