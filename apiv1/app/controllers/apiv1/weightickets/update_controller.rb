class Apiv1::Weightickets::UpdateController < ApplicationController
  def update
    render json: { weighticket: _updated_weighticket }, status: _update_status
  end
  private
  def _update_status
    return :ok if @update_ok
    return :bad_request
  end
  def _updated_weighticket
    if _weighticket.update _weighticket_params
      @update_ok = true
    else
      @update_ok = false
    end
    _weighticket
  end
  def _weighticket_params
    params.require(:weighticket).permit :appointment_number,
      :license_plate,
      :notes,
      :issuer_id,
      :pounds, 
      :finisher_id,
      :finish_pounds,
      :target_dock, 
      pictures: []
  end
  def _weighticket
    @weighticket ||= Apiv1::Weighticket.find params[:id]
  end
end
