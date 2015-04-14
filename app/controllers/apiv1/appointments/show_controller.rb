class Apiv1::Appointments::ShowController < ApplicationController
  def show
    render json: { appointment: _appointment }
  end
  private
  def _appointment
    Apiv1::Appointment.find_by_permalink!(params[:id]).ember_attributes
  end
end
