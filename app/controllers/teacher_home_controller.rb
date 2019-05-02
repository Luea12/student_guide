class TeacherHomeController < ApplicationController

  layout 'teacher'

  before_action :require_teacher_login

  def index
    @username = session[:username]
    render('index')
  end
end
