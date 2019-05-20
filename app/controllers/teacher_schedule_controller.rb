class TeacherScheduleController < ApplicationController

  before_action :require_teacher_login
  layout "teacher"

  def index

    @schedule = get_schedule

  end

end
