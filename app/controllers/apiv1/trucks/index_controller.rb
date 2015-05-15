class Apiv1::Trucks::IndexController < ApplicationController
  def index
    render json: { trucks: _trucks }
  end
  private
  def _trucks
    @trucks ||= Apiv1::Truck.all
  end
end
