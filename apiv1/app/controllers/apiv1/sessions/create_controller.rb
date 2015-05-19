class Apiv1::Sessions::CreateController < ApplicationController
  def create
    if _already_logged_in? || _login_success?
      render json: _session_hash
    else
      render json: _failure_hash, status: :unauthorized
    end
  end
  private
  def _already_logged_in?
    logged_in? && (@user = current_user)
  end
  def _login_success?
    @user = login(_session_params[:email], _session_params[:password], true)
  end
  def _session_params
    params.require(:session).permit :email, :password, :remember_me
  end
  def _session_hash
    { session: @user.public_attributes }
  end
  def _failure_hash
    return { session: { email: "that email doesn't exist" } } unless _email_exists?
    return { session: { password: "wrong password" } } if _wrong_password?
    raise ShouldNeverGetHere, "the email and password are both correct, but our server died"
  end
  def _email_exists?
    Apiv1::User.exists? email: _session_params[:email]
  end
  def _wrong_password?
    @user.blank?
  end
end
