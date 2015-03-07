class Apiv1::Sessions::DestroyController < ApplicationController
  def destroy
    logout if logged_in?
    render json: nil
  end
end
