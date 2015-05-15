class Apiv1::Trucks::ShowController < ApplicationController
  def show
    render json: { truck: _truck }
  end
  private
  def _truck
    @truck ||= Apiv1::Truck.find params[:id]
  end
end
