class Apiv1::Sessions::ShowController < ApplicationController
  def show
    if logged_in?
      render json: { session: current_user.public_attributes }
    else
      render json: {}, status: 401
    end
  end
end
