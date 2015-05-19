class Apiv1::Appointments::IndexController < ApplicationController
  def index
    appointments = _search_process.call
    render json: { 
      appointments: appointments.map(&:ember_attributes),
      meta: { 
        total_pages: appointments.total_pages,
        current_page: params[:page]
      }
    }
  end
  private
  def _search_process
    _default_scope >> _consider_pagination >> _consider_special_queries 
  end
  def _default_scope
    Arrows.lift { Apiv1::Appointment.order expected_at: :desc }
  end
  def _consider_pagination
    Arrows.lift { |scope| scope.page(params[:page]).per(params[:per_page]) }
  end
  def _consider_special_queries
    _relevant_today? >> _relevant_today! >> 
    _planned_for_future? >> _planned_for_future! >>
    _problematic? >> _problematic!
  end
  def _problematic?
    Arrows.polarize { params[:macro] == "problem" }
  end
  def _problematic!
    Arrows.good_fork Arrows.lift { |scope| scope.problematic }
  end
  def _planned_for_future!
    Arrows.good_fork Arrows.lift { |scope| scope.planned_for_future }
  end
  def _planned_for_future?
    Arrows.polarize { params[:macro] == "future" }
  end
  def _relevant_today!
    Arrows.good_fork Arrows.lift { |scope| scope.relevant_today }
  end
  def _relevant_today?
    Arrows.polarize { params[:macro] == "today" }
  end
end
