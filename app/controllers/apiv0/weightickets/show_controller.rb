class Apiv0::Weightickets::ShowController < ApplicationController
  def show
    @weighticket = Apiv1::Weighticket.find params[:id]
  end
end
