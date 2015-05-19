class Apiv1::Weightickets::ShowController < ApplicationController
  def show
    render json: { weighticket: _weighticket }
  end
  private
  def _weighticket
    Apiv1::Weighticket.find params[:id]
  end
end
