class ShowStudentsController < ApplicationController

  layout 'admin'

  before_action :require_admin_login

  def index
    @students = Student.all
    render("index")
  end
end
