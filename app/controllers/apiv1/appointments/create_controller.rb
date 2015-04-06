class Apiv1::Appointments::CreateController < ApplicationController
  def create
    _create_process.call _appointment_params
  end
  private
  def _appointment_params
    params.require(:appointment).permit(:material_description, :company, :expected_at, :notes)
  end
  def _create_process
    _setup_model >> _check_validity >> (_handle_success ^ _render_failure)
  end
  def _setup_model
    Arrows.lift { |param| Apiv1::Appointment.new param }
  end
  def _check_validity
    Arrows.polarize { |appointment| appointment.valid? }
  end
  def _handle_success
    _persist >> _render_success
  end
  def _persist
    Arrows.lift { |appointment| appointment.tap(&:save!) }
  end
  def _render_success
    Arrows.lift { |appointment| render json: { appointment: appointment.ember_attributes } }
  end
  def _render_failure
    Arrows.lift { |appointment| render json: appointment.errors, status: :not_acceptable }
  end
end
