class StaticController < ApplicationController
  def index
    flash[:notice] = params[:notice] if params[:notice].present?
    flash[:alert] = params[:error] if params[:error].present?
    flash[:success] = params[:success] if params[:success].present?
  end
end