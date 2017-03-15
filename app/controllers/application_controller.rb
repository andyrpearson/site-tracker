class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  def  sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
