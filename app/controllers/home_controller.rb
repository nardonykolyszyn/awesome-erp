class HomeController < ApplicationController
  layout :check_user_layout
  def index
  end

  private
  def check_user_layout
    unless user_signed_in?
      'logout'
    end
  end
end
