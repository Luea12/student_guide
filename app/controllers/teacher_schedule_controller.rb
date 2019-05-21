class TeacherScheduleController < ApplicationController

  layout 'teacher'

  before_action :require_teacher_login

  def index
    @schedule = get_schedule
  end

end
