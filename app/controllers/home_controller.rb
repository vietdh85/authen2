class HomeController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  def index

  end

  def test
    @email = current_user.email

    if session[:name].nil?
      session[:name] = "TESTING"
    else
      session[:name] = nil
    end

  end



end
