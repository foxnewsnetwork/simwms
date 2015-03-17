class Apiv1::Weightickets::CreateController < ApplicationController
  def create
    _weighticket_process.call _ticket_params
  end
  private
  def _ticket_params
    params.require(:weighticket).permit(:appointment_number, :license_plate, :notes, :issuer_id, :pounds, pictures: [])
  end
  def _weighticket_process
    _create_basic_weighticket >> _assign_to_dock >> _check_validity >> (_output_success ^ _output_failure)
  end
  def _create_basic_weighticket
    Arrows.lift { |params| Apiv1::Weighticket.new params }
  end
  def _assign_to_dock
    Arrows.lift { |ticket| Apiv1::StorehouseEngineer.assign_dock ticket }
  end
  def _check_validity
    Arrows.polarize(&:valid?)
  end
  def _output_success
    _attempt_persist >> _render_success
  end
  def _render_success
    Arrows.lift { |ticket| render json: { weighticket: ticket } }
  end
  def _attempt_persist
    Arrows.lift { |ticket| ticket.tap(&:save!) }
  end
  def _output_failure
    _report_error >> _render_failure
  end
  def _render_failure
    Arrows.lift { |errors| render json: errors, status: :bad_request }
  end
  def _report_error
    Arrows.lift { |ticket| ticket.errors }
  end
end
