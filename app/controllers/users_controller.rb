class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def check_email
    user = User.where.not(id: current_user&.id).find_by(email: params[:email])
    render json: { valid: user.nil? }
  end

  def check_username
    user = User.where.not(id: current_user&.id).find_by(username: params[:username])
    render json: { valid: user.nil? }
  end
end