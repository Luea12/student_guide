class StudentScheduleController < ApplicationController

  layout 'student'

  before_action :require_student_login

  def index

    @schedule = get_schedule

  end



end
