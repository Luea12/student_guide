class TeacherHomeController < ApplicationController

  layout 'application'

  before_action :require_teacher_login

  def index
    @username = session[:username]
    render('index')
  end
end
