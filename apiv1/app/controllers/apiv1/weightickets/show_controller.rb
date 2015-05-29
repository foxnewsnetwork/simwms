class Apiv1::Weightickets::ShowController < ApplicationController
  def show
    render json: { weighticket: _weighticket }
  end
  private
  def _weighticket
    @weighticket ||= Apiv1::Weighticket.find_by_appointment_number params[:id]
    @weighticket ||= Apiv1::Weighticket.find params[:id]
  end
end
