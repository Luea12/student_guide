class StudentHomeController < ApplicationController

  layout 'student'

  #before_action :require_student_login

  def index
    @username = session[:username]
    render('index')
  end
end
