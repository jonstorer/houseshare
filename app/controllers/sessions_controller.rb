class SessionsController < ApplicationController
  def create
    sign_in User.find_or_create_by_auth_hash(auth_hash)
    redirect_to root_path
  end

  def destroy
    sign_out
    redirect_to root_path
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end

  def sign_in(user)
    session[:current_user] = user.id.to_s
  end

  def sign_out
    session.delete(:current_user)
  end
end
