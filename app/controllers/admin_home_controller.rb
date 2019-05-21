class AdminHomeController < ApplicationController

  layout 'admin'

  before_action :require_admin_login

  def index
    @username = session[:username]
    render('index')
  end
end
