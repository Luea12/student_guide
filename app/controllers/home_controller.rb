class HomeController < ApplicationController

  layout 'application'

  before_action :confirm_logged_in

  def index
    @username = session[:username]
    render('index')
  end
end
