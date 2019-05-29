class ShowTeachersController < ApplicationController

  layout 'admin'

  before_action :require_admin_login

  def index
    @teachers = Teacher.all
    render("index")
  end
end
