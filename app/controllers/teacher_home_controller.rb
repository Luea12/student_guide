class TeacherHomeController < ApplicationController

  layout 'teacher'

  before_action :require_teacher_login

  def index
    @username = session[:username]
    render('index')
  end

  def attempt_add_news

    if params[:visible_to_teachers] == 0
      vtt = false
    else
      vtt = true
    end
    a = Announcement.new(:content => params[:content], :valability => Time.now + params[:valability].to_i * 86400, :visible_to_teachers => true, :teacher_id => current_user.id)
    a.save


    render('index')

  end

end
