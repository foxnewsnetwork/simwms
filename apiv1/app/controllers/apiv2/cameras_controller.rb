class Apiv2::CamerasController < ApplicationController
  def show
    render json: _camera.ember_attributes
  end
  def update
    if _camera.update _camera_params
      show
    else
      render json: _camera.errors
    end
  end
  def create
    if _camera.valid? && _camera.save
      show
    else
      render json: _camera.errors
    end
  end
  def destroy
    if _camera.destroy
      show
    else
      render json: _camera.errors
    end
  end
  private
  def _camera
    @camera ||= Apiv1::Camera.find params[:id] if params.has_key?(:id)
    @camera ||= Apiv1::Camera.new(_camera_params)
  end
  def _camera_params
    params.require(:camera).permit(:permalink, :camera_name, :mac_address, :tile_id, :camera_style)
  end
end