class Apiv1::Appointments::IndexController < ApplicationController
  def index
    render json: { appointments: _appointments }
  end
  private
  def _appointments
    Apiv1::Appointment.relevant_today.map &:ember_attributes
  end 
end
