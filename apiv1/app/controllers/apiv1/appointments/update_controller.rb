class Apiv1::Appointments::UpdateController < ApplicationController
  def update
    _update_process.call _appointment
  end
  private
  def _appointment
    Apiv1::Appointment.find params[:id]
  end
  def _appointment_params
    params.require(:appointment).permit(:material_description, :company, :notes, :fulfilled_at, :cancelled_at, :expected_at, :exploded_at)
  end
  def _update_process
    _attempt_update >> (_render_output ^ _render_error)
  end
  def _render_error
    Arrows.lift { |appointment| render json: appointment.errors, status: :not_acceptable }
  end
  def _attempt_update
    Arrows.polarize { |appointment| appointment.update _appointment_params }
  end
  def _render_output
    Arrows.lift { |appointment| render json: { appointment: appointment.ember_attributes } }
  end
end
