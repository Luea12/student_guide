class StudentScheduleController < ApplicationController

  before_action :require_student_login
  layout "student"

  def index

    @schedule = get_schedule

  end



end
