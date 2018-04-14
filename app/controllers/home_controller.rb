class HomeController < ApplicationController
  layout :check_user_layout
  before_action :redirect_to_enterprise

  def index
  end

  private
  def check_user_layout
    unless user_signed_in?
      'logout'
    end
  end

  def redirect_to_enterprise
    if current_user.enterprise_id.nil?
      redirect_to new_enterprise_path, notice: 'Crea una empresa'
    end
  end

end
