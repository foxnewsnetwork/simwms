class Apiv1::Trucks::CreateController < ApplicationController
  def create
    render json: { trucks: _truck }
  end
  private
  def _truck_params
    params.require(:truck).permit :entry_scale_id,
      :exit_scale_id,
      :dock_id,
      :appointment_id,
      :weighticket_id,
      :arrived_at,
      :departed_at,
      :docked_at,
      :undocked_at
  end
  def _truck
    @truck ||= Apiv1::Truck.create! _truck_params
  end
end
